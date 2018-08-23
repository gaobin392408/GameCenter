//
//  GBBaseViewController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseViewController.h"

@interface GBBaseViewController ()

@end

@implementation GBBaseViewController

#pragma mark - init
//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if(self){
//        self.hidesBottomBarWhenPushed = YES;
//    }
//    return self;
//}

#pragma mark - life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end


@implementation GBBaseViewController(NavigationBar)

- (void)setNavBarTitle:(NSString *)title
{
    self.navigationItem.title = title;
}

- (void)setLeftNaviBar
{
    
}

@end
