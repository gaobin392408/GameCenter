//
//  GBGameDetailViewController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameDetailViewController.h"
#import "GBGameCommentTableDelegate.h"
#import "GBGameCommentViewModel.h"
#import "GBGameHeaderView.h"

@interface GBGameDetailViewController ()

@property (nonatomic, strong) GBGameHeaderView *headerView;
@property (nonatomic, strong) GBGameCommentViewModel *commentViewModel;

@end

@implementation GBGameDetailViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupTableView];
    
    [self getGameCommentDataList];
}

#pragma mark - private method
- (void)setupTableView
{
    self.tableViewDelegate = [[GBGameCommentTableDelegate alloc]init];
    self.tableView.delegate = self.tableViewDelegate;
    self.tableView.dataSource = self.tableViewDelegate;
    self.tableView.allowsSelection = NO;
    self.tableView.tableHeaderView = self.headerView;
    
    self.commentViewModel = [[GBGameCommentViewModel alloc]init];
    self.tableViewDelegate.viewModel = self.commentViewModel;
    
}

- (void)getGameCommentDataList
{
    NSMutableDictionary *condition = [NSMutableDictionary dictionary];
    [condition setObject:self.gameModel.gameId forKey:@"gameId"];
    
    [self.commentViewModel getNetworkDataWithCondition:condition success:^{
        
        [self.tableView reloadData];
        
    } failure:^(NSError *err) {
        
        NSLog(@"getGameCommentDataList error. code = %ld", (long)err.code);
        
    }];
    
}

#pragma mark - getter

- (GBGameHeaderView *)headerView
{
    if (!_headerView) {
        _headerView = [[GBGameHeaderView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 80)];
        [_headerView setupSubView];
    }
    return _headerView;
}
@end
