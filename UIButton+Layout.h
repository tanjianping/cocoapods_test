//
//  UIButton+Layout.h
//  Testt
//
//  Created by Tan on 15/3/27.
//  Copyright (c) 2015年 Testt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIButton (Layout)

// vertical layout

/*
 ----------------
 |     图片      |
 |              |
 |     文字      |
 ----------------
 */
- (void)verticallyLayoutCenterWithPadding:(CGFloat)padding;

/*
 ----------------
 |     文字      |
 |              |
 |     图片      |
 ----------------
 */
- (void)verticallyLayoutCenterWithImageBottomAndPadding:(CGFloat)padding;


// horizontal layout

/*
 ----------------
 |              |
 |   图片 文字   |
 |              |
 ----------------
 */
- (void)horizontallyLayoutCenterWithPadding:(CGFloat)padding;
- (void)horizontallyLayoutWithLabelCenterAndImagePadding:(CGFloat)padding;
- (void)horizontallyLayoutWithImagePadding:(CGFloat)imagePadding labelPadding:(CGFloat)labelPadding;

/*
 ----------------
 |              |
 |   文字 图片   |
 |              |
 ----------------
 */
- (void)horizontallyLayoutCenterWithImageRight:(CGFloat)padding;
- (void)horizontallyLayoutWithImageRightAndPadding:(CGFloat)padding;

@end
