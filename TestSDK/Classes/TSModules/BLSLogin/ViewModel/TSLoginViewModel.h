//
//  TSLoginViewModel.h
//  CloudGateWay
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSLoginEntity.h"
#import "ReactiveCocoa.h"

@interface TSLoginViewModel : NSObject

@property (nonatomic, strong) RACCommand *registerAppCommand;

@property (nonatomic, strong) TSLoginEntity *loginEntity;

@end
