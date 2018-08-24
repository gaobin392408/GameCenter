//
//  GBGameCommentViewModel.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseViewModel.h"
#import "GBGameCommentModel.h"


@class GBCommentFrame;

@interface GBGameCommentViewModel : GBBaseViewModel

@property (nonatomic, retain) NSMutableArray<GBCommentFrame *> *commentFrames;
    
@end
