//
//  TSLockListEntity.m
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import "TSLockListEntity.h"

@implementation TSLockListEntity

//- (NSMutableDictionary *)dictionary {
//    return [self mj_keyValues];
//}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self fillData];
    }
    return self;
}

-(void)fillData
{
    self.lockList = [NSMutableArray array];
}

@end
