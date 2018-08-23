//
//  GBBaseViewController.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GBBaseViewController : UIViewController


@end


@interface GBBaseViewController(NavigationBar)

- (void)setNavBarTitle:(NSString *)title;

- (void)setLeftNaviBar;

@end

