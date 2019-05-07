//
//  TSLoginModel.m
//  ELockSDK
//
//  Created by 郏国上 on 2019/3/8.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import "TSLoginModel.h"
#import "TSLoginViewModel.h"
#import "TSLoginEntity.h"

@interface TSLoginModel ()
@property (nonatomic, strong) TSLoginViewModel *loginViewModel;
@property (nonatomic, strong) TSLoginEntity *loginEntity;
@end

@implementation TSLoginModel

-(TSLoginViewModel *)loginViewModel{
    if (!_loginViewModel)
    {
        _loginViewModel = [[TSLoginViewModel alloc] init];
    }
    return _loginViewModel;
}

-(TSLoginEntity *)loginEntity{
    
    if (!_loginEntity)
    {
        _loginEntity = [[TSLoginEntity alloc]init];
    }
    return _loginEntity;
}

@end
