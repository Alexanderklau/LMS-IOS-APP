//
//  SwingGestureRecognizer.m
//  自定义手势处理器
//
//  Created by lwb on 16/5/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "SwingGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>


@implementation SwingGestureRecognizer
CGFloat baseY;
CGFloat prevX;
NSInteger count;
NSUInteger prevDir;
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    baseY = point.y;
    prevX = point.x;
    count = 0;
    prevDir = 0;
}
 - (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint currPoint = [touch locationInView:self.view];
    if (fabs(currPoint.y - baseY) > 10) {
        self.state = UIGestureRecognizerStateCancelled;
        return;
    }
    NSUInteger currDir = currPoint.x > prevX ? 1 : 2;
    if (prevDir == 0) {
        prevDir = currDir;
    }
    if (prevDir != currDir) {
        count++;
        prevDir = currDir;
    }
    if (count >= self.swingCount) {
        self.state = UIGestureRecognizerStateEnded;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
