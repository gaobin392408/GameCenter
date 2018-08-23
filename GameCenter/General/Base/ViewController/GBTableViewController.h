//
//  GBTableViewController.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseViewController.h"

@class GBBaseTableViewDelegate;
@interface GBTableViewController : GBBaseViewController

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) GBBaseTableViewDelegate *tableViewDelegate;

- (instancetype)initTableViewWithStyle:(UITableViewStyle)tableViewStyle;

@end
