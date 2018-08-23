//
//  GBGameModel.h
//  GameCenter
//
//  Created by 高斌 on 2018/8/22.
//  Copyright © 2018年 高斌. All rights reserved.
//

#import "GBBaseModel.h"

@interface GBGameModel : GBBaseModel

@property (nonatomic, retain) NSString *gameId;
@property (nonatomic, retain) NSString *image;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *price;

@end
