//
//  UIImageView+LBBlurredImage.h
//  LBBlurredImage
//
//  Created by Luca Bernardi on 11/11/12.
//  Copyright (c) 2012 Luca Bernardi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LBBlurredImageCompletionBlock)(void);

extern CGFloat const kLBBlurredImageDefaultBlurRadius;

@interface UIImageView (LBBlurredImage)


- (void)setImageToBlur:(UIImage *)image
            blurRadius:(CGFloat)blurRadius
       completionBlock:(LBBlurredImageCompletionBlock)completion;


- (void)setImageToBlur:(UIImage *)image
       completionBlock:(LBBlurredImageCompletionBlock)completion;

@end
