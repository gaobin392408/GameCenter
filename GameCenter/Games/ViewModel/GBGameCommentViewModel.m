//
//  GBGameCommentViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentViewModel.h"
#import "GBGameCommentModel.h"
 #import "GBCommentFrame.h"

@implementation GBGameCommentViewModel

#pragma mark - GBQueryProtocol
- (void)getNetworkDataWithCondition:(NSDictionary *)condition
                            success:(SuccessBlock)success
                            failure:(FailureBlock)failure
{
    [self getNetWorkDataWithClass:[GBGameCommentModel class]
                        Condition:condition
                          success:success
                          failure:failure
     ];
}

#pragma mark - private method
/*
     由于Comment评论内容不确定 需要通过计算cell行高 达到性能优化
     本代码中采用自动布局计算的方式 由于页面较简单 不存在渲染性能问题 且有高度缓存
*/
 
- (void)setAllCommentFrame
{
    for (GBGameCommentModel *model in self.dataArray) {
        
        GBCommentFrame *commentFrame = [[GBCommentFrame alloc]init];
        [commentFrame setCommnetFrame:model];
        
        [self.commentFrames addObject:commentFrame];
    }
}
 
#pragma mark -getter
- (NSMutableArray *)commentFrames
{
    if(_commentFrames == nil ){
        _commentFrames = [NSMutableArray array];
    }
    return _commentFrames;
}
@end
