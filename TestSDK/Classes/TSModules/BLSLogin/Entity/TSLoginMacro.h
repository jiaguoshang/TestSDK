//
//  TSLoginMacro.h
//  ELockSDK
//
//  Created by 郏国上 on 2017/8/2.
//  Copyright © 2017年 Hangzhou BitInfo Technology Co., Ltd. All rights reserved.
//

#ifndef TSLogin_Macro_h
#define TSLogin_Macro_h

typedef NS_ENUM(NSInteger, TSLoginStatus)
{
    TSLoginStatusLogin = 0,//等待登陆状态
    TSLoginStatusForgetPassword = 1,//忘记密码状态
    TSLoginStatusRegist = 2//注册状态
};

static inline BOOL YX_IS_EMPTY(id thing) {
    return thing == nil ||
    ([thing isEqual:[NSNull null]]) ||
    ([thing respondsToSelector:@selector(length)] && [(NSData *)thing length] == 0) || [([NSString stringWithFormat:@"%@", thing]) isEqualToString:@"<null>"] ||
    ([thing respondsToSelector:@selector(count)]  && [(NSArray *)thing count] == 0);
}

static inline id GET_SAFE_STRING(id thing) {
    return YX_IS_EMPTY(thing) ? nil : thing;
}

//注意服务器返回数字类型的key-value的value值，若当字符串判断，结果为非字符串
static inline NSString *getNotNilString(id thing) {
    if(thing == nil)
    {
        return @"";
    }
    NSString *str = [NSString stringWithFormat:@"%@", thing];
    return [NSString stringWithFormat:@"%@",str];
}

static inline NSString *GET_NOT_EMPTY_STRING(id thing) {
    if(thing == nil)
    {
        return @"";
    }
    NSString *str = [NSString stringWithFormat:@"%@", thing];
    //注意服务器返回数字类型的key-value的value值，若当字符串判断，结果为非字符串
    if(![str isKindOfClass:[NSString class]])
    {
        return @"";
    }
    if ([str isEqual:@"NULL"] || [str isKindOfClass:[NSNull class]] || [str isEqual:[NSNull null]] || [str isEqual:NULL] || [[str class] isSubclassOfClass:[NSNull class]] || str == nil || str == NULL || [str isKindOfClass:[NSNull class]] || [[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]==0 || [str isEqualToString:@"<null>"] || [str isEqualToString:@"(null)"])
    {
        return @"";
    }
    
    return [NSString stringWithFormat:@"%@",str];
}
#endif
