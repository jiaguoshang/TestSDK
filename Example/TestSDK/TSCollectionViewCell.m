//
//  TSCollectionViewCell.m
//  BLockSDKUnitTest
//
//  Created by 郏国上 on 2019/3/8.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import "TSCollectionViewCell.h"

@implementation TSCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    
    return  self;
    
}

-(void)setupView{
    
    self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.frame), CGRectGetWidth(self.frame))];
    self.nameLabel.backgroundColor = [UIColor clearColor];
    self.nameLabel.textColor = [UIColor redColor];
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.nameLabel.font = [UIFont systemFontOfSize:15];
    [self addSubview:self.nameLabel];
}

-(void)setNameStr:(NSString *)nameStr{
    self.nameLabel.text = nameStr;
   
}

@end
