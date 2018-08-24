//
//  GBGameHeaderView.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameHeaderView.h"
#import "GBGameModel.h"

@interface GBGameHeaderView()

    @property (nonatomic, strong) UIImageView *topImageView;

@end


@implementation GBGameHeaderView

- (void)setupSubView
{
    weakSelf(wSelf);
   self.topImageView = [UIImageView allocAndToSuperView:self];
   [self.topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(wSelf);
   }];
}

- (void)setSubViewDataWithModel:(GBBaseModel *)data
{
    GBGameModel *gameModel = (GBGameModel *)data;
    
    [self.topImageView sd_setImageWithURL:[NSURL URLWithString:gameModel.image] placeholderImage:[UIImage imageNamed:@"default"]];
}


@end
