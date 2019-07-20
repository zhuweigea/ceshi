//
//  UIImage+Scale.m
//  Kaoshi
//
//  Created by 朱伟阁 on 2019/6/12.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

- (UIImage *)compressOriginalImage:(UIImage *)image toSize:(CGSize)size{
    UIImage *sourceImage = image;
    UIImage *newImage = nil;
    
    UIGraphicsBeginImageContext(size);
    
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = CGPointZero;
    thumbnailRect.size.width  = size.width;
    thumbnailRect.size.height = size.height;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage ;
}

@end
