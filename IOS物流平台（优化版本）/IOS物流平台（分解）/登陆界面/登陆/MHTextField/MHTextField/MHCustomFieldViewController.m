//
//  MHCustomFieldViewController.m
//  MHTextField
//
//  by lwb 16/6/3
//  Copyright (c) 2016 lwb
//

#import "MHCustomFieldViewController.h"
#import "DemoTextField.h"

@interface MHCustomFieldViewController ()

@end

@implementation MHCustomFieldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:242/255. green:242/255. blue:246/255. alpha:1.0]];
    
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-CondensedBold"size:22.0];
    
    CGFloat leftPadding = 20;
    CGFloat rightPadding = 40;
    
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(leftPadding, 80, self.view.frame.size.width - rightPadding, font.pointSize)];
    
    [titleLabel setFont:font];
    [titleLabel setText:@"加入我吧！"];
    
    [self.view addSubview:titleLabel];
    
    DemoTextField *firstNameTextField = [[DemoTextField alloc] initWithFrame:CGRectMake(leftPadding, titleLabel.frame.origin.y + titleLabel.frame.size.height + 15, self.view.frame.size.width - rightPadding, 40)];
    
    [firstNameTextField setRequired:YES];
    [firstNameTextField setPlaceholder:@"您的名字"];
    
    [self.view addSubview:firstNameTextField];
    
    DemoTextField *lastNameTextField = [[DemoTextField alloc] initWithFrame:CGRectMake(leftPadding, firstNameTextField.frame.size.height + firstNameTextField.frame.origin.y + 10, self.view.frame.size.width - rightPadding, firstNameTextField.frame.size.height)];
    
    [lastNameTextField setPlaceholder:@"您的电话"];
    [lastNameTextField setRequired:YES];
    
    [self.view addSubview:lastNameTextField];
    
}

@end
