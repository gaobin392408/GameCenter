//
//  GBGamesViewController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGamesViewController.h"
#import "GBGameDetailViewController.h"
#import "GBGamesTableViewDelegate.h"
#import "GBGameViewModel.h"

@interface GBGamesViewController()

@property (nonatomic, strong) GBGameViewModel *gameViewModel;

@end

@implementation GBGamesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupTableView];
    
    [self getGamesDataList];
}

- (void)setupTableView
{
    self.tableViewDelegate = [[GBGamesTableViewDelegate alloc]init];
    self.tableView.delegate = self.tableViewDelegate;
    self.tableView.dataSource = self.tableViewDelegate;
    
    self.gameViewModel = [[GBGameViewModel alloc]init];
    self.tableViewDelegate.viewModel = self.gameViewModel;
    
    weakSelf(wSelf);
    self.tableViewDelegate.rowDisSelectedCallback = ^(NSIndexPath *indexPath){
        
        GBGameModel *tmpModel = (GBGameModel *) [wSelf.gameViewModel.dataArray objectAtIndex:indexPath.row];
        GBGameDetailViewController *detailVC = [[GBGameDetailViewController alloc]init];
        detailVC.gameModel = tmpModel;
        
        [wSelf.navigationController pushViewController:detailVC animated:YES];
    };

}

- (void)getGamesDataList
{
    weakSelf(wSelf);
    [self.gameViewModel getGameDataList:^{

        [wSelf.tableView reloadData];
        
    } failure:^(NSError *err) {
        
        NSLog(@"getGameDataList error. errCode = %ld", (long)err.code);
        
    }];
    
    
}

@end
