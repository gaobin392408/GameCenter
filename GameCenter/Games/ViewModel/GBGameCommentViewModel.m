//
//  GBGameCommentViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentViewModel.h"
#import "GBCommentFrame.h"

@implementation GBGameCommentViewModel

#pragma mark - GBQueryProtocol
- (void)getNetworkDataWithCondition:(NSDictionary *)condition
                            success:(SuccessBlock)success
                            failure:(FailureBlock)failure
{
//    weakSelf(wSelf);
//    [self getNetworkDataWithClassName:@"Game" success:^{
//
//        [wSelf convertToCommnetDatas];
//        if (success) success();
//
//    } failure:failure];
    
    // 模拟数据
    [self getSimulatedData:success failure:failure];
}

#pragma mark - private method

- (void)convertToCommnetDatas
{
    NSMutableArray<GBGameCommentModel *> *comments = [NSMutableArray array];
    
    for (PFObject *object in self.dataArray) {
        
        GBGameCommentModel *comment = [[GBGameCommentModel alloc]init];
        comment.name = [object objectForKey:@"name"];
        comment.avatar = [object objectForKey:@"avatar"];
        comment.comment = [object objectForKey:@"comment"];
        
        [comments addObject:comment];
    }
    
    self.dataArray = [NSArray arrayWithArray:comments];
}

/*
     由于Comment评论内容不确定 需要通过计算cell行高 达到性能优化
     本代码中采用自动布局计算的方式 由于页面较简单 不存在渲染性能问题 且有高度缓存
*/
 
- (void)setAllCommentFrame
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        for (GBGameCommentModel *model in self.dataArray) {
            
            GBCommentFrame *commentFrame = [[GBCommentFrame alloc]init];
            [commentFrame setCommnetFrame:model];
            
            [self.commentFrames addObject:commentFrame];
        }
        
        // 处理完成跳入主线程
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
        });
        
    });
    
}
 
- (void)getSimulatedData:(SuccessBlock)success failure:(FailureBlock)failure
{
    NSMutableArray<GBGameCommentModel *> *gameModels = [NSMutableArray array];
    for (int index = 0; index < 20; index ++) {

        GBGameCommentModel *tmpMode = [[GBGameCommentModel alloc]init];
        tmpMode.avatar = @"https://233r3.com";
        tmpMode.name = @"我的游戏";
        if (index % 2 == 0) {
            tmpMode.comment = @"士大夫士大夫士大夫士大夫士大夫士大夫士大夫士大夫撒旦飞洒的发送到发送到发送到发生大范德萨发士大夫士大夫撒旦法师打发斯蒂芬是的地方发士大夫士大夫士大夫撒旦法士大夫撒的范德萨发的萨芬撒地方撒地方大师法撒旦法地方士大夫撒地方撒旦法师法师打发事发地点撒撒地方撒旦发的啥打法上的士大夫士大夫撒旦事发地点是多少";
        }
        else{
            tmpMode.comment = @"112124141241212312412412412421412412413334343113edddee";
            
        }
       
        [gameModels addObject:tmpMode];
    }
    
    self.dataArray = [NSArray arrayWithArray:gameModels];
    
    if(success) success();
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
