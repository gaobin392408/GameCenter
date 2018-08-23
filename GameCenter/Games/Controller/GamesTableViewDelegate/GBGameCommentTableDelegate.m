//
//  GBGameCommentTableDelegate.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBGameCommentTableDelegate.h"
#import "GBGameCommentTableViewCell.h"
#import "GBGameCommentModel.h"
@implementation GBGameCommentTableDelegate

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"comment";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    GBGameCommentTableViewCell *tmpCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!tmpCell) {
        tmpCell = [[GBGameCommentTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        [tmpCell setupSubView];
        [tmpCell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    GBGameCommentModel *tmpModel =(GBGameCommentModel *)[self.viewModel.dataArray objectAtIndex:indexPath.row];
    [tmpCell setCellData:tmpModel];
    
    return tmpCell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30.0f;
}

@end
