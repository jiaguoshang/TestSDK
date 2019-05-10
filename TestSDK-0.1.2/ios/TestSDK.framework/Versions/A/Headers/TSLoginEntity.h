//
//  TSLoginEntity.h
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSLoginEntity : NSObject

@property (nonatomic, strong) NSString *userId;

//是否登录成功
@property (nonatomic, assign) BOOL isLogin;

@end
