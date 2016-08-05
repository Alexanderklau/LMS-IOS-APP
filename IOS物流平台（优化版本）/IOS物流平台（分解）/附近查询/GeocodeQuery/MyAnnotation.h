//
//  MyAnnotation.h
//  WhereAmI
//

#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation>

//街道信息属性
@property (nonatomic, copy) NSString *streetAddress;
//城市信息属性
@property (nonatomic, copy) NSString *city;
//州、省、市信息
@property (nonatomic, copy) NSString *state;
//邮编
@property (nonatomic, copy) NSString *zip;
//地理坐标
@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

@end
