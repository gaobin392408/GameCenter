//
//  UIView+Additional.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "UIView+Additional.h"

@implementation UIView (Additional)

+ (instancetype)allocAndToSuperView:(UIView *)superView
{
    NSParameterAssert(superView);
    
    UIView *subView = [[self alloc]init];
    [superView addSubview:subView];
    
    return subView;
}

@end
