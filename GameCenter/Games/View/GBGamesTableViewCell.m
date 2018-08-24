//
//  GBGamesTableViewCell.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
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

#pragma mark - overried
- (void)setupSubView
{
    [super setupSubView];
    weakSelf(wSelf);
    self.gameImagView = [UIImageView allocAndToSuperView:self.contentView];
    [self.gameImagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.contentView.mas_top).offset(5);
        make.left.equalTo(wSelf.contentView.mas_left).offset(5);
        make.right.equalTo(wSelf.contentView.mas_right).offset(-5);
        make.height.mas_equalTo(80);
    }];
    
    self.gamaNameLabel = [UILabel allocAndToSuperView:self];
    self.gamaNameLabel.font = [UIFont systemFontOfSize:20];
    [self.gamaNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.gameImagView.mas_bottom);
        make.bottom.equalTo(wSelf.contentView.mas_bottom);
        make.left.equalTo(wSelf.gameImagView.mas_left).offset(5);
        make.width.equalTo(wSelf.gameImagView).multipliedBy(0.5);
    }];

    self.gamePriceLabel = [UILabel allocAndToSuperView:self];
    self.gamePriceLabel.textAlignment = NSTextAlignmentRight;
    [self.gamePriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.gameImagView.mas_bottom);
        make.bottom.equalTo(wSelf.contentView.mas_bottom);
        make.right.equalTo(wSelf.gameImagView.mas_right).offset(-5);
        make.width.equalTo(wSelf.gameImagView).multipliedBy(0.4);
    }];
}

- (void)setCellData:(GBBaseModel *)data
{
    GBGameModel *gameModel = (GBGameModel *)data;
    [self.gameImagView sd_setImageWithURL:[NSURL URLWithString:gameModel.image] placeholderImage:[UIImage imageNamed:@"default"]];
    self.gamaNameLabel.text = gameModel.name;
    self.gamePriceLabel.text = gameModel.price;

}

@end
