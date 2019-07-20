//
//  UIImage+Scale.h
//  Kaoshi
//
//  Created by 朱伟阁 on 2019/6/12.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Scale)

- (UIImage *)compressOriginalImage:(UIImage *)image toSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
