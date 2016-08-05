//
//  ViewController.h
//  UIWebView(浏览器)
//
//  Created by lwb on 16/5/7.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UITextField *addr;
- (IBAction)touchview:(id)sender;



@end

