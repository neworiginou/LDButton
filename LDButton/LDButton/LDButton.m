//
//  LDButton.m
//  LDButton
//
//  Created by lidi on 15/3/14.
//  Copyright (c) 2015年 lidi. All rights reserved.
//

#import "LDButton.h"

@implementation LDButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark 设置Button内部的image的范围
- ( CGRect )imageRectForContentRect:( CGRect )contentRect
{
    return _imageRect;
}

#pragma mark 设置Button内部的title的范围
- ( CGRect )titleRectForContentRect:( CGRect )contentRect
{
    return _labelRect;
}
@end
