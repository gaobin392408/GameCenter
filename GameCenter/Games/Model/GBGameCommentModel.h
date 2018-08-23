//
//  GBGameCommentModel.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseModel.h"

@interface GBGameCommentModel : GBBaseModel

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *avatar;
@property (nonatomic, retain) NSString *comment;
@property (nonatomic, assign) CGFloat cellHeight;

@end
