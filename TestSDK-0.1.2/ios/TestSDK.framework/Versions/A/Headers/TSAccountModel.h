//
//  AEAccount.h
//  ELockSDK
//
//  Created by 郏国上 on 2017/8/2.
//  Copyright © 2017年 Hangzhou Yixiang Internet Technology Co., Ltd. All rights reserved.
//


@interface TSAccountModel : NSObject<NSCoding>

@property (nonatomic,strong) NSString *userId;
@property (nonatomic, assign) BOOL loginState;
//@property (nonatomic, assign) long versionSnoClearUseInfo;

-(id)initWithDictionary:(NSDictionary*)dic;
@end

