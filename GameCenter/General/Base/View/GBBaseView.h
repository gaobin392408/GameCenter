//
//  GBBaseView.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBBaseModel;
@class GBBaseViewModel;
@interface GBBaseView : UIView

- (void)setupSubView;

- (void)setSubViewDataWithModel:(GBBaseModel *)data;

- (void)setSubViewDataWithViewModel:(GBBaseViewModel *)data;

@end
