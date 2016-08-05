//
//  ViewController.h
//  高德地图使用
//
//  Created by lwb on 16/5/18.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtQueryKey;
- (IBAction)mapbutton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textview;



@end

