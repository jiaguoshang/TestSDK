//
//  TSLockList.m
//  ELockSDK
//
//  Created by 郏国上 on 2019/3/8.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import "TSLockListModel.h"
#import "TSLockListViewModel.h"
#import "TSLockListEntity.h"

@interface TSLockListModel ()
@property (nonatomic, strong) TSLockListViewModel *lockListViewModel;
@property (nonatomic, strong) TSLockListEntity *lockListEntity;

@end

@implementation TSLockListModel

-(TSLockListViewModel *)lockListViewModel{
    if (!_lockListViewModel)
    {
        _lockListViewModel = [[TSLockListViewModel alloc]init];
    }
    return _lockListViewModel;
}

-(TSLockListEntity *)lockListEntity{
    
    if (!_lockListEntity)
    {
        _lockListEntity = [[TSLockListEntity alloc]init];
    }
    return _lockListEntity;
}

-(void)getLockListWithUserId:(NSString *)userId
                     showHUD:(BOOL)showHUD
                successBlock:(TSSuccessBlock _Nullable)successBlock
                failureBlock:(TSFailureBlock _Nullable)failureBlock
{
    self.lockListEntity.userId = userId;
//    self.lockListEntity.token = token;
    self.lockListEntity.showHUD = showHUD;
    @weakify(self);
//    FLDDLogVerbose(@"page");
    [[self.lockListViewModel.getLockListCommand execute:self.lockListEntity]subscribeNext:^(NSDictionary *result) {
//        @strongify(self);
        NSLog(@"TSLockListModel result:%@", result);
        if(successBlock)
        {
            successBlock(result);
        }
    } error:^(NSError *error) {
        NSLog(@"TSLockListModel error:%@", error.domain);
        if(failureBlock)
        {
            failureBlock(error);
        }
    }];
}
@end
