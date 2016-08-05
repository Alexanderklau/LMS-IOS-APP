//
//  ViewController.m
//  自定义手势处理器
//
//  Created by lwb on 16/5/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "SwingGestureRecognizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.gv.layer.borderWidth = 2;
    self.gv.layer.cornerRadius = 6;
    self.gv.userInteractionEnabled = YES;
    self.gv.multipleTouchEnabled = YES;
    SwingGestureRecognizer *gesture = [[SwingGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwing:)];
    gesture.swingCount = 2;
    [self.gv addGestureRecognizer:gesture];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) handleSwint:(SwingGestureRecognizer *)gesture
{
    NSUInteger touchNum = gesture.numberOfTouches;
    self.label.text = [NSString stringWithFormat:@"用户使用  %d 个手指进行摆动",touchNum];
    [self.label performSelector:@selector(setText:) withObject:@"" afterDelay:2];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
