//
//  GBGameCommentTableDelegate.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
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
    return @"Comment";
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
    static GBGameCommentTableViewCell *testCell = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        testCell = [[GBGameCommentTableViewCell alloc]init];
        [testCell setupSubView];
    });
    
    GBGameCommentModel *tmpModel =(GBGameCommentModel *)[self.viewModel.dataArray objectAtIndex:indexPath.row];
    [testCell setCellData:tmpModel];
    
    
    if(tmpModel.cellHeight <= 0){
        CGFloat tmpHight = [testCell systemLayoutSizeFittingSizeWithCompressSize].height;
        tmpModel.cellHeight = tmpHight;
    }
    
    return tmpModel.cellHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20.0f;
}

@end
