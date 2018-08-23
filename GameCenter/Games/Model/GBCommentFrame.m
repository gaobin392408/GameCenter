//
//  GBCommentFrame.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 bingao. All rights reserved.
//

#import "GBCommentFrame.h"
#import "GBGameCommentModel.h"

CGFloat const GBCommentHorizontalSpace = 10.0f;
CGFloat const GBCommentVerticalSpace = 10.0f;
CGFloat const GBCommentAvarWH = 30.0f;

@interface GBCommentFrame()
    
@property (nonatomic, assign) CGRect avarFrame;
@property (nonatomic, assign) CGRect nickNameFrame;
@property (nonatomic, assign) CGRect commentFrame;
@property (nonatomic, assign) CGFloat cellHeight;

    
@end

@implementation GBCommentFrame

- (void)setCommnetFrame:(GBGameCommentModel *)commentModel
{
    _commentModel = commentModel;
    
    CGFloat avatarX = GBCommentHorizontalSpace;
    CGFloat avatarY = GBCommentVerticalSpace;
    CGFloat avatarW = GBCommentAvarWH;
    CGFloat avatarH = GBCommentAvarWH;
    
    self.avarFrame = CGRectMake(avatarX, avatarY, avatarW, avatarH);
    
    // 以下省略
    
    self.cellHeight = CGRectGetMaxY(self.commentFrame) + GBCommentVerticalSpace;
}
    
@end
