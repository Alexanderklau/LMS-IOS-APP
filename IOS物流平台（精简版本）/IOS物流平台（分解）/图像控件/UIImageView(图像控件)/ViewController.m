//
//  ViewController.m
//  UIImageView(图像控件)
//
//  Created by lwb on 16/5/5.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *images;
int curimages;
CGFloat alpha;
- (void)viewDidLoad {
    [super viewDidLoad];
    curimages = 0;
    alpha = 1.0;
    images = [NSArray arrayWithObjects:@"lijiang.jpg",@"qiao.jpg",@"xianbi,jpg",nil];
    self.iv1.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTep = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clicked:)];
    [self.iv1 addGestureRecognizer:singleTep];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plus:(id)sender {
    alpha += 0.02;
    if (alpha >= 1.0) {
        alpha = 1.0;
    }
    self.iv1.alpha = alpha;
}

- (IBAction)minus:(id)sender {
    alpha -= 0.02;
    if (alpha <= 0.0) {
        alpha = 0.0;
    }
    self.iv1.alpha = alpha;
    
}

- (IBAction)next:(id)sender {

    self.iv1.image = [UIImage imageNamed:[images objectAtIndex:(++curimages % images.count)]];
}
-(void)clicked:(UIGestureRecognizer *)gestureRecognizer
{
    UIImage *sreimage = self.iv1.image;
    CGPoint pt = [gestureRecognizer locationInView:self.iv1];
    CGImageRef sourceImageRef = [sreimage CGImage];
    CGFloat scale = sreimage.size.width / 320;
    CGFloat x = pt.x *scale;
    CGFloat y = pt.y *scale;
    if (x + 120 > sreimage.size.width) {
        x = sreimage.size.width - 140;
    }
    if (y + 120 > sreimage.size.width) {
        y = sreimage.size.height - 140;
    }
    CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef, CGRectMake(x, y, 140, 140));
    self.iv2.image = [UIImage imageWithCGImage:newImageRef];
    
}
@end
