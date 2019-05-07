//
//  AEAccount.m
//  ELockSDK
//
//  Created by 郏国上 on 2017/8/2.
//  Copyright © 2017年 Hangzhou Yixiang Internet Technology Co., Ltd. All rights reserved.
//

#import "TSAccountModel.h"
#import "TSLoginMacro.h"

@implementation TSAccountModel

-(id)initWithDictionary:(NSDictionary*)dic
{
    if (self=[super init])
    {
        //下面不是响应返回的字段
        self.userId = GET_NOT_EMPTY_STRING(dic[@"userId"]);
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:GET_NOT_EMPTY_STRING(self.userId) forKey:@"userId"];
//    [aCoder encodeObject:[NSNumber numberWithLong:self.versionSnoClearUseInfo] forKey:@"versionSnoClearUseInfo"];
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super init])
    {
        self.userId = [aDecoder decodeObjectForKey:@"userId"];
//        self.versionSnoClearUseInfo = [[aDecoder decodeObjectForKey:@"versionSnoClearUseInfo"] longValue];
    }
    return self;
}

@end
