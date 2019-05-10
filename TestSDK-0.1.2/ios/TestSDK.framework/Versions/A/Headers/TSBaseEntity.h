//
//  TSBaseEntity.h
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//判断数组是否为空
#define isTSEmptyArray(array) (array == nil || [array isKindOfClass:[NSNull class]] || ![array isKindOfClass:[NSArray class]] || (array.count == 0))

typedef void(^TSSuccessBlock)(id result);
typedef void(^TSFailureBlock)(NSError * _Nullable error);

@interface TSBaseEntity : NSObject
@property (nonatomic, assign) BOOL showHUD;

@end
NS_ASSUME_NONNULL_END
