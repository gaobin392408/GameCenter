//
//  GBTabBarController.m
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBTabBarController.h"
#import "GBNavigationController.h"
#import "GBGamesViewController.h"
#import "GBFunctionViewController.h";
#import "GBBankCardViewController.h"
#import "GBProfilViewController.h"

@interface GBTabBarController ()

@end

@implementation GBTabBarController

#pragma mark -life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addChildViewControllers];
}

#pragma mark - private method
- (void)addChildViewControllers
{
    [self addChildViewController:NSClassFromString(@"GBGamesViewController") withNormalImage:@"games" withSelectImage:@"gamesblue" withTitle:@"Games"];
    [self addChildViewController:NSClassFromString(@"GBFunctionViewController") withNormalImage:@"function" withSelectImage:@"functionblue" withTitle:@"Function"];
    [self addChildViewController:NSClassFromString(@"GBBankCardViewController") withNormalImage:@"bankCard" withSelectImage:@"bankCardblue" withTitle:@"BankCard"];

    [self addChildViewController:NSClassFromString(@"GBProfilViewController") withNormalImage:@"my" withSelectImage:@"myblue" withTitle:@"Profile"];

}

- (void)addChildViewController:(Class)controllerClass withNormalImage:(NSString *)normalImage withSelectImage:(NSString *)selectImage withTitle:(NSString *)title
{
    UIViewController *childController = [[controllerClass alloc]init];
    childController.tabBarItem.image = [UIImage imageNamed:normalImage];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    childController.title = title;
    
    GBNavigationController *nav = [[GBNavigationController alloc]initWithRootViewController:childController];
    [self addChildViewController:nav];
}

@end
