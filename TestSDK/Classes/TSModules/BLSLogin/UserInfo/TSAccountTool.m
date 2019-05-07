//
//  TSAccountTool.m
//  ELockSDK
//
//  Created by 郏国上 on 2017/8/2.
//  Copyright © 2017年 Hangzhou Yixiang Internet Technology Co., Ltd. All rights reserved.
//

#import "TSAccountTool.h"

@implementation TSAccountTool

//single_implementation(AccountTool)

+(TSAccountTool *) sharedAccountTool
{
    static TSAccountTool *sharedAccountTool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedAccountTool = [[self alloc] init];
    });
    
    return sharedAccountTool;
}

- (void)saveAccount:(TSAccountModel *)account
{
    _account = account;
    NSString *path = [self PathWithFileName:@"TestSDK_account.data"];//拓展名可以自己随便取
    [NSKeyedArchiver archiveRootObject:account toFile:path];
}

- (void)removeAccount
{
    NSString *path = [self PathWithFileName:@"TestSDK_account.data"];//拓展名可以自己随便取
    TSAccountModel *account = nil;
    [NSKeyedArchiver archiveRootObject:account toFile:path];
    _account= nil;
}

//得到用户信息
-(TSAccountModel *)getAccountInfo;
{
    NSLog(@"函数");
    NSString *path = [self PathWithFileName:@"TestSDK_account.data"];//拓展名可以自己随便取
    TSAccountModel *account = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    _account = account;
    return account;
}

//  返回文件路径
- (NSString *)PathWithFileName:(NSString *)fileName
{
    NSString *documents = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSString *path = [documents stringByAppendingPathComponent:fileName];
    return path;
}

@end
