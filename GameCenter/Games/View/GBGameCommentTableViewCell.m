//
//  GBGameCommentTableViewCell.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentTableViewCell.h"

@interface GBGameCommentTableViewCell()

@property (nonatomic, strong) UIImageView *avarImagView;
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UILabel *commentLabel;

@end

@implementation GBGameCommentTableViewCell

- (void)setupSubView
{
    weakSelf(wSelf);
    self.avarImagView = [UIImageView allocAndToSuperView:self];
    [self.avarImagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(wSelf.mas_left).offset(15);
        make.centerY.equalTo(wSelf.mas_centerY);
        make.width.and.height.mas_equalTo(40);
    }];
    
    self.userNameLabel = [UILabel allocAndToSuperView:self];
    [self.userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(wSelf.avarImagView.mas_right).offset(5);
        make.right.equalTo(wSelf.mas_right).offset(-5);
        make.top.equalTo(wSelf.avarImagView.mas_top);
        make.height.mas_equalTo(25);
    }];
    
    self.commentLabel = [UILabel allocAndToSuperView:self];
    self.commentLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 15 - 40 - 10;
    self.commentLabel.numberOfLines = 0;
    [self.commentLabel setContentHuggingPriority:UILayoutPriorityRequired  forAxis:UILayoutConstraintAxisVertical];
    
    [self.commentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(wSelf.userNameLabel);
        make.top.equalTo(wSelf.userNameLabel.mas_bottom).offset(8);
        make.bottom.equalTo(wSelf.mas_bottom).offset(-10);
    }];
}

@end
