//
//  GBGamesTableViewDelegate.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGamesTableViewDelegate.h"
#import "GBGamesTableViewCell.h"
#import "GBGameModel.h"

@implementation GBGamesTableViewDelegate

#pragma mark - UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    GBGamesTableViewCell *gameCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!gameCell) {
        gameCell = [[GBGamesTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        [gameCell setupSubView];
        [gameCell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    GBGameModel *gameModel =(GBGameModel *)[self.viewModel.dataArray objectAtIndex:indexPath.row];
    [gameCell setCellData:gameModel];
    
    return gameCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120.0f;
}


@end
