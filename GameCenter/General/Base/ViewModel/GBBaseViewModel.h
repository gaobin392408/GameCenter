//
//  GBBaseViewModel.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessBlock) (void);
typedef void(^FailureBlock)(NSError *err);

@protocol GBQueryProtocol<NSObject>
    
@optional
    
- (void)getNetworkData:(SuccessBlock)success
               failure:(FailureBlock)failure;
 
- (void)getNetworkDataWithCondition:(NSDictionary *)condition
                            success:(SuccessBlock)success
                            failure:(FailureBlock)failure;
    
- (void)getNetworkDataWithClass:(Class)class
                        success:(SuccessBlock)success
                        failure:(FailureBlock)failure;

- (void)getNetWorkDataWithClass:(Class)class
                      Condition:(NSDictionary *)condition
                        success:(SuccessBlock)success
                        failure:(FailureBlock)failure;
@end



@class GBBaseModel;
@interface GBBaseViewModel : NSObject<GBQueryProtocol>

@property (nonatomic, strong) NSArray<GBBaseModel *> *dataArray;
@property (nonatomic, assign) NSUInteger currentPage;
@property (nonatomic, assign) NSUInteger pageSize;
    

@end


