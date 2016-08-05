//
//  ViewController.h
//  UIDatePicker(倒计时)
//
//  Created by lwb on 16/5/6.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)clicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datapicker;
@property (weak, nonatomic) IBOutlet UIButton *startBn;


@end

