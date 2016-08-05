//by lwb 2016/6/4

#import <UIKit/UIKit.h>
#import "QRCodeReaderDelegate.h"

@interface ViewController : UIViewController <QRCodeReaderDelegate>

- (IBAction)scanAction:(id)sender;

@end

