//
//  TSLockListViewModel.h
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSLockListEntity.h"
#import "ReactiveCocoa.h"

@interface TSLockListViewModel : NSObject

@property (nonatomic, strong) RACCommand *getLockListCommand;

@property (nonatomic, strong) TSLockListEntity *lockListEntity;

@end
