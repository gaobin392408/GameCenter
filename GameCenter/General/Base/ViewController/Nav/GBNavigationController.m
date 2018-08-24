//
//  GBNavigationController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBNavigationController.h"

@interface GBNavigationController ()

@end

@implementation GBNavigationController

#pragma mark - life cycle
  
+ (void)initialize
{
    // 最好自定义返回按钮  该方法去除不了动画问题
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-800, 0) forBarMetrics:UIBarMetricsDefault];

}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

#pragma mark - overried
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count == 1) {
        viewController.hidesBottomBarWhenPushed = YES; //viewController是将要被push的控制器
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
