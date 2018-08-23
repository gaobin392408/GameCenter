//
//  GBCommentFrame.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 bingao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GBGameCommentModel;
@interface GBCommentFrame : NSObject

@property (nonatomic, assign, readonly) CGRect avarFrame;
@property (nonatomic, assign, readonly) CGRect nickNameFrame;
@property (nonatomic, assign, readonly) CGRect commentFrame;

@property (nonatomic, assign, readonly) CGFloat cellHeight;
@property (nonatomic, retain) GBGameCommentModel *commentModel;
- (void)setCommnetFrame:(GBGameCommentModel *)commentModel;

@end
