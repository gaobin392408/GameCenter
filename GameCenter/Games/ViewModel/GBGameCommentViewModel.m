//
//  GBGameCommentViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentViewModel.h"
#import "GBGameCommentModel.h"

@implementation GBGameCommentViewModel

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
@end
