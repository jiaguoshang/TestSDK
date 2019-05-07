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


@interface TestSDKSingleObject ()
@property (nonatomic, strong) TSLockListModel *lockListModel;
@property (nonatomic, strong) TSLoginModel *loginModel;
@property (nonatomic, strong) NSMutableArray *elockList;

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

-(NSMutableArray *)elockList{
    if (!_elockList)
    {
        _elockList = [NSMutableArray array];
    }
    return _elockList;
}

-(void)getLockListWithSuccessBlock:(TSSuccessBlock)successBlock
                      failureBlock:(TSFailureBlock)failureBlock
{
//    [self.lockListModel getLockListWithUserId:[TSAccountTool sharedAccountTool].account.userId showHUD:NO successBlock:^(id result) {
//        NSLog(@"TestSDKSingleObject result:%@", result);
//        NSMutableArray *data = result;
//        if(!isTSEmptyArray(data))
//        {
//            self.elockList = data;
//        }
//        else
//        {
//            self.elockList = [NSMutableArray array];
//        }
//
//        if(successBlock)
//        {
//            successBlock(self.elockList);
//        }
//    } failureBlock:^(NSError * _Nullable error) {
//        NSLog(@"TestSDKSingleObject error:%@", error.domain);
//        if(failureBlock)
//        {
//            failureBlock(error);
//        }
//    }];
}


//-(void)registerAppWithUserId:(NSString *)userId
//                     userPwd:(NSString *)userPwd
//                        sign:(NSString *)sign
//                successBlock:(TSSuccessBlock)successBlock
//                failureBlock:(TSFailureBlock)failureBlock
//{
//    [self.loginModel registerAppWithUserId:userId userPwd:userPwd sign:sign successBlock:^(id result) {
//        NSLog(@"TestSDKSingleObject registerAppWithUserId result:%@", result);
//        NSString *response = nil;
//        if(successBlock)
//        {
//            successBlock(response);
//        }
//    } failureBlock:^(NSError * _Nullable error) {
//        NSLog(@"TestSDKSingleObject registerAppWithUserId failureBlock:%@", error);
//        if(failureBlock)
//        {
//            failureBlock(error);
//        }
//    }];
//}


@end
