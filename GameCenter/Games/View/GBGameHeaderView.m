//
//  GBGameHeaderView.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameHeaderView.h"


@implementation GBGameHeaderView

- (void)setupSubView
{
    weakSelf(wSelf);
   UIImageView *gameImageView = [UIImageView allocAndToSuperView:self];
   [gameImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(wSelf);
   }];
}


@end
