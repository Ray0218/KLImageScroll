//
//  UIImage+Color.m
//  KLImageScroll
//
//  Created by WKL on 2019/12/27.
//  Copyright © 2019 Ray. All rights reserved.
//

#import "UIImage+Color.h"

 

@implementation UIImage (Color)


+ (UIImage *)kl_ImageWithColor:(UIColor *)color  size:(CGSize)size isCircle:(BOOL)isCircular{
 
    // 描述矩形
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    // 开启位图上下文
    UIGraphicsBeginImageContextWithOptions(size, NO, [[UIScreen mainScreen] scale]);
    
    // 获取位图上下文
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // circular
    if (isCircular) {
        CGPathRef path = CGPathCreateWithEllipseInRect(rect, NULL);
        CGContextAddPath(context, path);
        CGContextClip(context);
        CGPathRelease(path);
    }
    
         // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    
    // 从上下文中获取图片
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    // 结束上下文
    UIGraphicsEndImageContext();
    return theImage;
}

@end
