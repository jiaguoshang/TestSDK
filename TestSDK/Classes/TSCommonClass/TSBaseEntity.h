//
//  TSBaseEntity.h
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//判断字符串是否为空
#define isELSFormatEmptyString(str) (str && ![str isKindOfClass:[NSNull class]] && [str isKindOfClass:[NSString class]] && ([(NSString *)str length] == 0)) ? nil : str
//判断字符串是否为空
#define isELSEmptyString(str) ([str isKindOfClass:[NSNull class]] || str == nil || ![str isKindOfClass:[NSString class]] || [str length] < 1)

//判断数组是否为空
#define isELSEmptyArray(array) (array == nil || [array isKindOfClass:[NSNull class]] || ![array isKindOfClass:[NSArray class]] || (array.count == 0))
//判断字典是否为空
#define isELSEmptyDict(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || ![dic isKindOfClass:[NSDictionary class]] || (dic.allKeys == 0))

typedef void(^TSSuccessBlock)(id result);
typedef void(^TSFailureBlock)(NSError * _Nullable error);

@interface TSBaseEntity : NSObject
@property (nonatomic, assign) BOOL showHUD;

@end
NS_ASSUME_NONNULL_END
