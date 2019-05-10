//
//  TSLockListModel
//  ELockSDK
//
//  Created by 郏国上 on 2019/3/8.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSBaseEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface TSLockListModel : NSObject

-(void)getLockListWithUserId:(NSString *)userId
                     showHUD:(BOOL)showHUD
                successBlock:(TSSuccessBlock _Nullable)successBlock
                failureBlock:(TSFailureBlock _Nullable)failureBlock;
-(void)getLockListWithUserId:(NSString *)userId
                       token:(NSString *)token;
@end

NS_ASSUME_NONNULL_END
