//by lwb 2016/6/4

#import "ViewController.h"
#import "QRCodeReaderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)scanAction:(id)sender
{
    static QRCodeReaderViewController *reader = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        reader                        = [QRCodeReaderViewController new];
        reader.modalPresentationStyle = UIModalPresentationFormSheet;
    });
    reader.delegate = self;
    
    [reader setCompletionWithBlock:^(NSString *resultAsString) {
        NSLog(@"Completion with result: %@", resultAsString);
    }];
    
    [self presentViewController:reader animated:YES completion:NULL];
}

#pragma mark - QRCodeReader Delegate Methods

- (void)reader:(QRCodeReaderViewController *)reader didScanResult:(NSString *)result
{
    [self dismissViewControllerAnimated:YES completion:^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"QRCodeReader" message:result delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }];
}

- (void)readerDidCancel:(QRCodeReaderViewController *)reader
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
