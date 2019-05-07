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
    
//    self.productImageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.frame), CGRectGetWidth(self.frame))];
//    self.productImageV.contentMode = UIViewContentModeScaleAspectFill;
//    self.productImageV.clipsToBounds = YES;
//    [self addSubview:self.productImageV];
    
    self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.frame), CGRectGetWidth(self.frame))];
    self.nameLabel.backgroundColor = [UIColor clearColor];
    self.nameLabel.textColor = [UIColor redColor];
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.nameLabel.font = [UIFont systemFontOfSize:15];
    [self addSubview:self.nameLabel];
}

-(void)setNameStr:(NSString *)nameStr{
//    [self.productImageV  sd_setImageWithURL:[NSURL URLWithString:worksEntity.pictureUrl?worksEntity.pictureUrl:@""] placeholderImage:[UIImage imageNamed:@"logoArtEnjoy"]];
    self.nameLabel.text = nameStr;
    
//    if ([worksEntity.showType integerValue] == 0) {
//
//        self.productImageV.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetWidth(self.frame) / 5 * 3);
////        self.nameLabel.backgroundColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1];
//        self.nameLabel.textColor = COLOR_WITH_HEX(0x898989);
//
//    }else{
//
//        self.productImageV.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame),  CGRectGetWidth(self.frame));
//        self.nameLabel.backgroundColor = [UIColor clearColor];
//        self.nameLabel.textColor = [UIColor whiteColor];
//
//    }
    
}

@end
