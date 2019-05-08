//
//  TestSDKSingleObject.m
//  ELockSDK
//
//  Created by 郏国上 on 2019/3/7.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import "TestSDKSingleObject.h"
#import "TSLockListModel.h"
#import "ReactiveCocoa.h"
#import "TSLoginModel.h"
#import "TSAccountTool.h"


@interface TestSDKSingleObject ()
@property (nonatomic, strong) TSLockListModel *lockListModel;
@property (nonatomic, strong) TSLoginModel *loginModel;
@property (nonatomic, strong) NSMutableArray *lockList;

@end

@implementation TestSDKSingleObject

+ (TestSDKSingleObject *)sharedInstance
{
    static TestSDKSingleObject *sharedInstace = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedInstace = [[self alloc] init];
    });
    
    return sharedInstace;
}

- (instancetype)init
{
    if (self = [super init]) {
        //设置网络初始配置
        [self configRequest];
        [self addBlock];
    }
    return self;
}

-(void)addBlock
{

}
- (void)configRequest
{
   
}

-(TSLockListModel *)lockListModel{
    if (!_lockListModel)
    {
        _lockListModel = [[TSLockListModel alloc]init];
    }
    return _lockListModel;
}

-(TSLoginModel *)loginModel{
    if (!_loginModel)
    {
        _loginModel = [[TSLoginModel alloc]init];
    }
    return _loginModel;
}

-(NSMutableArray *)lockList{
    if (!_lockList)
    {
        _lockList = [NSMutableArray array];
    }
    return _lockList;
}

-(void)getLockListWithUserId:(NSString *)userId
                       token:(NSString *)token
{
    [self.lockListModel getLockListWithUserId:userId token:token];
}

-(void)getLockListWithSuccessBlock:(TSSuccessBlock)successBlock
                      failureBlock:(TSFailureBlock)failureBlock
{
    [self.lockListModel getLockListWithUserId:[TSAccountTool sharedAccountTool].account.userId showHUD:NO successBlock:^(id result) {
        NSLog(@"TestSDKSingleObject result:%@", result);
        NSMutableArray *data = result;
        if(!isTSEmptyArray(data))
        {
            self.lockList = data;
        }
        else
        {
            self.lockList = [NSMutableArray array];
        }

        if(successBlock)
        {
            successBlock(self.lockList);
        }
    } failureBlock:^(NSError * _Nullable error) {
        NSLog(@"TestSDKSingleObject error:%@", error.domain);
        if(failureBlock)
        {
            failureBlock(error);
        }
    }];
}

@end
