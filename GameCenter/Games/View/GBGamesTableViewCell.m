//
//  GBGamesTableViewCell.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGamesTableViewCell.h"
#import "GBGameModel.h"

@interface GBGamesTableViewCell()

@property (nonatomic, strong) UIImageView *gameImagView;
@property (nonatomic, strong) UILabel *gamaNameLabel;
@property (nonatomic, strong) UILabel *gamePriceLabel;

@end

@implementation GBGamesTableViewCell

- (void)setupSubView
{
    [super setupSubView];
    weakSelf(wSelf);
    self.gameImagView = [UIImageView allocAndToSuperView:self];
    [self.gameImagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.mas_top).offset(10);
        make.left.equalTo(wSelf.mas_left).offset(5);
        make.right.equalTo(wSelf.mas_right).offset(-5);
        make.width.mas_equalTo(40);
    }];
    
    self.gamaNameLabel = [UILabel allocAndToSuperView:self];
    [self.gamaNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.gameImagView.mas_bottom);
        make.left.equalTo(wSelf.gameImagView);
        make.width.equalTo(wSelf.gameImagView).dividedBy(2);
    }];
    
    self.gamePriceLabel = [UILabel allocAndToSuperView:self];
    [self.gamePriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.gameImagView.mas_bottom);
        make.right.equalTo(wSelf.mas_right);
        make.width.equalTo(wSelf.gameImagView).dividedBy(1);
    }];
}

- (void)setCellData:(GBBaseModel *)data
{
    GBGameModel *gameModel = (GBGameModel *)data;
    self.gamaNameLabel.text = gameModel.name;
    self.gamePriceLabel.text = gameModel.price;

}

@end
