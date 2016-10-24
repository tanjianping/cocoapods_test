//
//  UIButton+Layout.m
//  Testt
//
//  Created by Tan on 15/3/27.
//  Copyright (c) 2015年 Testt. All rights reserved.
//

#import "UIButton+Layout.h"

@implementation UIButton (Layout)

- (void)verticallyLayoutCenterWithPadding:(CGFloat)padding
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    CGFloat totalHeight = (imageSize.height + titleSize.height + padding);
    
    self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize.height), 0.0, 0.0, -titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, -imageSize.width, -(totalHeight - titleSize.height), 0.0);
}

- (void)verticallyLayoutCenterWithImageBottomAndPadding:(CGFloat)padding
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    CGFloat totalHeight = (imageSize.height + titleSize.height + padding);
    
    self.imageEdgeInsets = UIEdgeInsetsMake((totalHeight - imageSize.height), 0.0, 0.0, -titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, -imageSize.width, (totalHeight - titleSize.height), 0.0);
}

- (void)horizontallyLayoutCenterWithPadding:(CGFloat)padding
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    CGFloat totalWidth = (imageSize.width + titleSize.width + padding);
    CGFloat marginLength = (self.frame.size.width - totalWidth) / 2;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, marginLength, 0.0, marginLength + padding);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, marginLength + padding, 0.0, marginLength);
}

- (void)horizontallyLayoutWithLabelCenterAndImagePadding:(CGFloat)padding
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, padding, 0.0, 0.0);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, (self.frame.size.width - titleSize.width) / 2. - imageSize.width, 0.0, 0.0);
}

- (void)horizontallyLayoutWithImagePadding:(CGFloat)imagePadding labelPadding:(CGFloat)labelPadding
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, imagePadding, 0.0, 0.0);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, imagePadding + labelPadding, 0.0, 0.0);
}

- (void)horizontallyLayoutCenterWithImageRight:(CGFloat)padding
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    CGFloat totalWidth = (imageSize.width + titleSize.width + padding);
    CGFloat marginLength = (self.frame.size.width - totalWidth) / 2;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, marginLength + titleSize.width + padding, 0.0, 0.0);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, marginLength - imageSize.width, 0.0, 0.0);
}

- (void)horizontallyLayoutWithImageRightAndPadding:(CGFloat)padding
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, self.frame.size.width - imageSize.width, 0.0, 0.0);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, self.frame.size.width - imageSize.width * 2 - titleSize.width - padding, 0.0, 0.0);
}

@end
