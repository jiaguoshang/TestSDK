//
//  TSLockListViewModel.m
//  ELockSDK
//
//  Created by jiaguoshang on 2017/12/7.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#import "TSLockListViewModel.h"

@interface TSLockListViewModel ()

@end

@implementation TSLockListViewModel

- (instancetype)init
{
    if (self = [super init]) {
        [self setupRACCommand];
    }
    return self;
}


- (void)setupRACCommand
{
    @weakify(self);
    self.getLockListCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            @strongify(self);
            self.lockListEntity = input;
            NSLog(@"self.lockListEntity:%@， self.lockListEntity.userId：%@", self.lockListEntity, self.lockListEntity.userId);
            NSMutableDictionary *params = [NSMutableDictionary dictionary];
            //有网络请求组件发送请求，由于网络请求组件很复杂及牵涉私有组件，这里以直接返回代替实际发送过程
            //模拟网络请求组件的成功处理
            NSMutableDictionary *result = [NSMutableDictionary dictionary];
            [result setObject:@"200" forKey:@"code"];
            [subscriber sendNext:result];
            [subscriber sendCompleted];
            //模拟网络请求组件的失败处理
//            [subscriber sendError:[NSError errorWithDomain:@"参数错误" code:-1 userInfo:nil]]
            return nil;
        }];
    }];
    //设置可以重复发送相同的消息
    self.getLockListCommand.allowsConcurrentExecution = YES;
}

@end
