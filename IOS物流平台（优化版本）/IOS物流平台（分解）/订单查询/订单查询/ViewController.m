//
//  ViewController.m
//  订单查询
//
//  Created by lwb on 16/6/7.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)bt1:(id)sender {
    NSString *msg = [NSString stringWithFormat:@"查询不到订单！请重试!"];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"查询完毕" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}


@end
