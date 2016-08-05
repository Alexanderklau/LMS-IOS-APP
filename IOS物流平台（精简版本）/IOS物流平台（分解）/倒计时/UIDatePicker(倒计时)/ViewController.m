//
//  ViewController.m
//  UIDatePicker(倒计时)
//
//  Created by lwb on 16/5/6.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSTimer *timer;
NSInteger leftSeconds;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.datapicker.datePickerMode = UIDatePickerModeCountDownTimer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clicked:(id)sender {
    leftSeconds = self.datapicker.countDownDuration;
    self.datapicker.enabled = NO;
    [sender setEnabled:NO];
    NSString *message = [NSString stringWithFormat:@"开始倒计时？您还剩下%d s",leftSeconds];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"开始倒计时" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    timer = [NSTimer scheduledTimerWithTimeInterval:60 target:self selector:@selector(tickDown) userInfo:nil repeats:YES];
}
-(void) tickDown
{
    leftSeconds -= 60;
    self.datapicker.countDownDuration = leftSeconds;
    if (leftSeconds <= 0) {
        [timer invalidate];
        self.datapicker.enabled = YES;
        self.startBn.enabled = YES;
    }
}
@end
