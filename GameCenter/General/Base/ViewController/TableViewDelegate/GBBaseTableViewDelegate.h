//
//  GBBaseTableViewDelegate.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^rowDidSelectBlock) (NSIndexPath *indexPath);

@class GBBaseViewModel;
@interface GBBaseTableViewDelegate : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) GBBaseViewModel *viewModel;
@property (nonatomic, copy) rowDidSelectBlock rowDisSelectedCallback;

@end
