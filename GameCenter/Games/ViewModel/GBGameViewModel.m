//
//  GBGameViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameViewModel.h"
#import "GBGameModel.h"

@implementation GBGameViewModel

- (void)getNetworkData:(SuccessBlock)success
               failure:(FailureBlock)failure
{
    // 这里调用是为了防止需要对数据进行转化等
    [self getNetworkDataWithClass:[GBGameModel class] success:success failure:failure];
    
}

@end
