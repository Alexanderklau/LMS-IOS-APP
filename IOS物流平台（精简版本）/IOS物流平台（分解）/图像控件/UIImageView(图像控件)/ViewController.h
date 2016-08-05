//
//  ViewController.h
//  UIImageView(图像控件)
//
//  Created by lwb on 16/5/5.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *iv1;
@property (weak, nonatomic) IBOutlet UIImageView *iv2;
- (IBAction)plus:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)next:(id)sender;




@end

