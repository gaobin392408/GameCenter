//
//  GBGameCommentTableViewCell.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentTableViewCell.h"
#import "GBGameCommentModel.h"

@interface GBGameCommentTableViewCell()

@property (nonatomic, strong) UIImageView *avarImagView;
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UILabel *commentLabel;
//@property (nonatomic, strong) UIView *lineView;
    
@end

@implementation GBGameCommentTableViewCell

#pragma mark - overried
- (void)setupSubView
{
    weakSelf(wSelf);
    self.avarImagView = [UIImageView allocAndToSuperView:self.contentView];
    [self.avarImagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.contentView.mas_top).offset(15);
        make.left.equalTo(wSelf.contentView.mas_left).offset(15);
        make.width.and.height.mas_equalTo(40);
    }];
    
    self.userNameLabel = [UILabel allocAndToSuperView:self.contentView];
    self.userNameLabel.font = [UIFont boldSystemFontOfSize:16];
    [self.userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(wSelf.avarImagView.mas_right).offset(15);
        make.right.equalTo(wSelf.contentView.mas_right).offset(-5);
        make.top.equalTo(wSelf.avarImagView.mas_top);
        make.height.mas_equalTo(25);
    }];
    
    self.commentLabel = [UILabel allocAndToSuperView:self.contentView];
    self.commentLabel.preferredMaxLayoutWidth = kWindowW - 15 - 40 - 10;
    self.commentLabel.numberOfLines = 0;
    [self.commentLabel setContentHuggingPriority:UILayoutPriorityRequired  forAxis:UILayoutConstraintAxisVertical];
    
    [self.commentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(wSelf.userNameLabel);
        make.top.equalTo(wSelf.userNameLabel.mas_bottom).offset(1);
        make.bottom.equalTo(wSelf.contentView.mas_bottom).offset(-10);
    }];
    
//    self.lineView = [UIView allocAndToSuperView:self.contentView];
//    self.lineView.backgroundColor = [UIColor grayColor];
//    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(wSelf.avarImagView);
//        make.right.equalTo(wSelf.contentView);
//        make.height.mas_equalTo(1);
//        make.bottom.equalTo(wSelf.contentView.mas_bottom);
//    }];
}

- (void)setCellData:(GBBaseModel *)data
{
    GBGameCommentModel *commentModel = (GBGameCommentModel *)data;
                                        
    [self.avarImagView sd_setImageWithURL:[NSURL URLWithString:commentModel.avatar] placeholderImage:[UIImage imageNamed:@"default"]];
    self.userNameLabel.text = commentModel.name;
    self.commentLabel.text  = commentModel.comment;
    
}
    
@end
