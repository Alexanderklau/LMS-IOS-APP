//
//  ViewController.m
//  多点触控（手势处理器）
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

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
    for (int i = 1; i < 6; i++) {
        UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap:)];
        gesture.numberOfTapsRequired = i;
        gesture.numberOfTouchesRequired = 2;
        [self.gv addGestureRecognizer:gesture];
    }
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) handleTap:(UITapGestureRecognizer *)gesture
{
    NSUInteger touchNum = gesture.numberOfTouches;
    NSUInteger tapnum = gesture.numberOfTouchesRequired;
    self.label.text = [NSString stringWithFormat:@"用户使用 %d 个手指进行触碰。触碰次数为 %d",touchNum,tapnum];
    [self.label performSelector:@selector(setText:) withObject:@"" afterDelay:2];

     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
