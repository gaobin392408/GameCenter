//
//  GBGameViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameViewModel.h"
#import "GBGameModel.h"

@implementation GBGameViewModel

#pragma mark - GBQueryProtocol
- (void)getNetworkData:(SuccessBlock)success
               failure:(FailureBlock)failure
{
//    weakSelf(wSelf);
//    [self getNetworkDataWithClassName:@"Comments" success:^{
//
//        [wSelf convertToGameDatas];
//        if (success) success();
//
//    } failure:failure];
    
    // 网络数据获取不到 VPN问题 暂时模拟数据
    
     [self getSimulatedData:success failure:failure];
}

#pragma mark - private method

- (void)convertToGameDatas
{
    NSMutableArray<GBGameModel *> *gameModels = [NSMutableArray array];
    
    for (PFObject *object in self.dataArray) {
        
        GBGameModel *game = [[GBGameModel alloc]init];
        game.gameId = [object objectForKey:@"gameId"];
        game.name   = [object objectForKey:@"name"];
        game.image  = [object objectForKey:@"image"];
        game.price  = [self formatGamePrice:[object objectForKey:@"price"]];
        
        [gameModels addObject:game];
    }
    
    self.dataArray = [NSArray arrayWithArray:gameModels];
}

- (NSString *)formatGamePrice:(NSString *)rawGamePrice
{
    
    NSString *priceStr = [NSString stringWithFormat:@"$ %.2f",     rawGamePrice.floatValue / 100 ];
    return priceStr;
    
}

- (void)getSimulatedData:(SuccessBlock)success
               failure:(FailureBlock)failure
{
    NSMutableArray<GBGameModel *> *gameModels = [NSMutableArray array];
    for (int index = 1; index <= 15; index ++) {

        GBGameModel *tmpMode = [[GBGameModel alloc]init];
        tmpMode.gameId = [NSString stringWithFormat:@"%d", index];
        tmpMode.image = @"https://233r3.com";
        tmpMode.name = @"Glory of Kings";
        tmpMode.price = [self formatGamePrice:@"1900"];
        [gameModels addObject:tmpMode];
    }

    self.dataArray = [NSArray arrayWithArray:gameModels];
    
    if(success) success();
}
    
@end
