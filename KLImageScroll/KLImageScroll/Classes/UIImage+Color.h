//
//  UIImage+Color.h
//  KLImageScroll
//
//  Created by WKL on 2019/12/27.
//  Copyright © 2019 Ray. All rights reserved.
//

 

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Color)


+ (UIImage *)kl_ImageWithColor:(UIColor *)color  size:(CGSize)size isCircle:(BOOL)isCircular;

@end

NS_ASSUME_NONNULL_END
