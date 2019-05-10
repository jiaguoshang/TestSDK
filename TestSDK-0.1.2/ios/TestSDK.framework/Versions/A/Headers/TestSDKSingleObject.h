//
//  TestSDKSingleObject.h
//  ELockSDK
//
//  Created by 郏国上 on 2019/3/7.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSBaseEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestSDKSingleObject : NSObject

+ (TestSDKSingleObject *)sharedInstance;

-(void)getLockListWithSuccessBlock:(TSSuccessBlock)successBlock
                      failureBlock:(TSFailureBlock)failureBlock;

-(void)getLockListWithUserId:(NSString *)userId
                       token:(NSString *)token;

@end

NS_ASSUME_NONNULL_END
