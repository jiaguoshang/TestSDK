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
            
            return nil;
        }];
    }];
    self.getLockListCommand.allowsConcurrentExecution = YES;
}

@end
