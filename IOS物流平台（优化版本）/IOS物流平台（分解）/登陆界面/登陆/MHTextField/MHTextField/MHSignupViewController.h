//
//  MHSignupViewController.h
//  MHTextField
//
//by lwb 2016/6/4
//  Copyright (c) 2016 lwb
//

#import <UIKit/UIKit.h>
#import "DemoTextField.h"

@interface MHSignupViewController : UIViewController

@property (strong, nonatomic) IBOutlet DemoTextField *emailTextField;
@property (strong, nonatomic) IBOutlet DemoTextField *passwordTextField;
@property (strong, nonatomic) IBOutlet DemoTextField *firstNameTextField;
@property (strong, nonatomic) IBOutlet DemoTextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet DemoTextField *phoneTextField;
@property (strong, nonatomic) IBOutlet DemoTextField *ageTextField;


- (IBAction)createAccount:(id)sender;

@end
