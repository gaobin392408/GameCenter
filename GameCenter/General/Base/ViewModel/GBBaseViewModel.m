//
//  GBBaseViewModel.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseViewModel.h"
#import "GBBaseModel.h"

@implementation GBBaseViewModel

#pragma mark - GBQueryProtocol
- (void)getNetworkDataWithClass:(Class)class
                        success:(SuccessBlock)success
                        failure:(FailureBlock)failure
{
    weakSelf(wSelf);
    PFQuery *query = [PFQuery queryWithClassName:NSStringFromClass(class)];
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if(error){
            failure(error);
        }
        else
        {
            wSelf.dataArray = [NSArray arrayWithArray:objects];
            success();
        }
    }];
}
    
- (void)getNetWorkDataWithClass:(Class)class
                      Condition:(NSDictionary *)condition
                        success:(SuccessBlock)success
                        failure:(FailureBlock)failure
{
    weakSelf(wSelf);
    PFQuery *query = [PFQuery queryWithClassName:NSStringFromClass(class)];
    
    for (NSString *key in condition) {
        [query whereKey:key equalTo:[condition objectForKey:key]];
    }
    
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if(error){
            failure(error);
        }
        else
        {
            wSelf.dataArray = [NSArray arrayWithArray:objects];
            success();
        }
    }];
}
#pragma mark - getter
- (NSArray<GBBaseModel *> *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSArray array];
    }
    return _dataArray;
}
    
@end
