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
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - overried
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
}

@end
