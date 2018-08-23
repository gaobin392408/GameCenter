//
//  GBTableViewController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBTableViewController.h"
#import "GBBaseTableViewDelegate.h"

@interface GBTableViewController()

@property (nonatomic, assign) UITableViewStyle tableViewStyle;

@end

@implementation GBTableViewController

#pragma mark - init
- (instancetype)init
{
    if (self = [super init]) {
        _tableViewStyle = UITableViewStylePlain;
    }
    return self;
}

- (instancetype)initTableViewWithStyle:(UITableViewStyle)tableViewStyle
{
    if (self = [super init]) {
        _tableViewStyle = tableViewStyle;
    }
    return self;
}


#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}

#pragma make - getter

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:self.tableViewStyle];
        _tableView.dataSource = self.tableViewDelegate;
        _tableView.delegate = self.tableViewDelegate;
        _tableView.tableFooterView = [[UIView alloc]init];
    }
    // TODO 布局
    return _tableView;
}

- (GBBaseTableViewDelegate *)tableViewDelegate
{
    if (!_tableViewDelegate) {
        _tableViewDelegate = [[GBBaseTableViewDelegate alloc]init];
    }
    return _tableViewDelegate;
}
@end
