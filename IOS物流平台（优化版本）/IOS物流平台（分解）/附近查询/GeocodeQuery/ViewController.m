//
//  ViewController.m
//  GeocodeQuery
//

//  
//

#import "ViewController.h"
#import "MyAnnotation.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <AddressBook/AddressBook.h>

@interface ViewController ()<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtQueryKey;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)geocodeQuery:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView.mapType = MKMapTypeStandard;
    // self.mapView.mapType = MKMapTypeSatellite;
    self.mapView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)geocodeQuery:(id)sender {
    
    if (_txtQueryKey.text == nil || [_txtQueryKey.text length] == 0) {
        return;
    }
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:_txtQueryKey.text completionHandler:^(NSArray *placemarks, NSError *error) {
        
        NSLog(@"查询记录数：%lu",[placemarks count]);
        
        if ([placemarks count] > 0) {
            [self.mapView removeAnnotations:self.mapView.annotations];
        }
        
        for (int i = 0; i < [placemarks count]; i++) {
            
            CLPlacemark* placemark = placemarks[i];
            
            //调整地图位置和缩放比例
            MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(placemark.location.coordinate, 10000, 10000);
            [self.mapView setRegion:viewRegion animated:YES];
            
            MyAnnotation *annotation = [[MyAnnotation alloc] init];
            annotation.streetAddress = placemark.thoroughfare;
            annotation.city = placemark.locality;
            annotation.state = placemark.administrativeArea;
            annotation.zip = placemark.postalCode;
            annotation.coordinate = placemark.location.coordinate;
            
            [self.mapView addAnnotation:annotation];
        }
        
        //关闭键盘
        [_txtQueryKey resignFirstResponder];
    }];
    
}

#pragma mark -
#pragma mark Map View Delegate Methods
- (MKAnnotationView *) mapView:(MKMapView *)theMapView viewForAnnotation:(id <MKAnnotation>) annotation {
    
    MKPinAnnotationView *annotationView
    = (MKPinAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:@"PIN_ANNOTATION"];
    if(annotationView == nil) {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                         reuseIdentifier:@"PIN_ANNOTATION"];
    }
    
    annotationView.pinColor = MKPinAnnotationColorPurple;
    annotationView.animatesDrop = YES;
    annotationView.canShowCallout = YES;
    
    return annotationView;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    self.mapView.centerCoordinate = userLocation.location.coordinate;
}

- (void)mapViewDidFailLoadingMap:(MKMapView *)theMapView withError:(NSError *)error {
    NSLog(@"error : %@",[error description]);
}



@end
