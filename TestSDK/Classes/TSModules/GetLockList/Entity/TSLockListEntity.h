//
//  TSLockListEntity.h
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSBaseEntity.h"

@interface TSLockListEntity : TSBaseEntity

@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSMutableArray *lockList;

@end
