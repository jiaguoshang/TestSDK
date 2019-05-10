//
//  TSAccountTool.h
//  ELockSDK
//
//  Created by 郏国上 on 2017/8/2.
//  Copyright © 2017年 Hangzhou Yixiang Internet Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSAccountModel.h"

@interface TSAccountTool : NSObject

// 获得当前账号
@property (nonatomic, strong) TSAccountModel *account;
+(TSAccountTool *) sharedAccountTool;

- (void)saveAccount:(TSAccountModel *)account;
- (void)removeAccount;
//这个函数或saveAccount，一定要被调用一次才能写入内存
-(TSAccountModel *)getAccountInfo;;//得到用户信息


@end
