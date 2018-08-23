//
//  GBProjectCom.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/23.
//  Copyright © 2018年 高斌. All rights reserved.
//

#ifndef GBProjectCom_h
#define GBProjectCom_h

#define weakSelf(wSelf) __weak __typeof(self) (wSelf) = (self)

//应用程序的屏幕高度
#define kWindowH        [UIScreen mainScreen].bounds.size.height
//应用程序的屏幕宽度
#define kWindowW        [UIScreen mainScreen].bounds.size.width

#endif /* GBProjectCom_h */
