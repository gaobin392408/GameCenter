//
//  GBBaseTableViewCell.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseTableViewCell.h"

@implementation GBBaseTableViewCell

- (void)setupSubView
{
    
}

- (void)setCellData:(GBBaseModel *)data
{
    
}

- (CGSize)systemLayoutSizeFittingSizeWithCompressSize
{
   return [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
}

@end
