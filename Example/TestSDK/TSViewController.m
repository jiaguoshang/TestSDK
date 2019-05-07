//
//  TSViewController.m
//  ELock
//
//  Created by wjc1wjc2wjc3 on 03/12/2019.
//  Copyright (c) 2019 wjc1wjc2wjc3. All rights reserved.
//

#import "TSViewController.h"
//#import "ELockSDKSingleObject.h"
#import "ReactiveCocoa.h"
#import "TSCollectionViewCell.h"

// 屏幕宽度
#define BLSTFullWidth            [[UIScreen mainScreen] bounds].size.width

// 屏幕高度
#define BLSTFullHeight           [[UIScreen mainScreen] bounds].size.height
#define BLSTIPhoneEar (BLSTFullWidth == 375 && BLSTFullHeight == 812 ? true : false)
#define BLSTMainTopHeight  (BLSTIPhoneEar ? 88 : 64)

@interface TSViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *testUnitList;
@property (nonatomic, strong) NSArray *testUnitSelectorList;
@end

@implementation TSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.testUnitList = [NSMutableArray arrayWithObjects:@"测试主工程使用第三方库",@"测试调用SDK的函数", nil];
    self.testUnitSelectorList = @[@"testRACSignal", @"testSDKRACSignal"];
    [self configSubViews];
}

- (void)configSubViews {
    //创建布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    
    //创建CollectionView
    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, BLSTMainTopHeight-64 , [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height  - BLSTMainTopHeight+64) collectionViewLayout:flowLayout];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_collectionView];
    
    [_collectionView registerClass:[TSCollectionViewCell class] forCellWithReuseIdentifier:@"TSCollectionViewCell"];
    
    //定义每个UICollectionView 的大小
    flowLayout.itemSize = CGSizeMake(([[UIScreen mainScreen] bounds].size.width  - 20  ) / 2  , ([[UIScreen mainScreen] bounds].size.width - 20) / 2);
    //定义每个UICollectionView 横向的间距
    flowLayout.minimumLineSpacing = 5;
    //定义每个UICollectionView 纵向的间距
    flowLayout.minimumInteritemSpacing = 5;
    //定义每个UICollectionView 的边距距
    flowLayout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);//上左下右
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *title =  @"";
    if (indexPath.item < self.testUnitList.count) {
        title = [self.testUnitList objectAtIndex:indexPath.item];
    }
    TSCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TSCollectionViewCell" forIndexPath:indexPath];
    cell.nameStr = title;
    cell.backgroundColor = [UIColor colorWithRed:241/255.0 green:241/255.0 blue:241/255.0 alpha:1];
    return  cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.testUnitList.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSUInteger idx = indexPath.row;
    NSString *selectorStr = self.testUnitSelectorList[idx];
    SEL testAction =  NSSelectorFromString(selectorStr);
    if ([self respondsToSelector:testAction]) {
        [self performSelector:testAction withObject:nil afterDelay:0];
    }
    
}

-(void)testRACSignal
{
    [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            
            return nil;
        }];
    }];
}

-(void)testSDKRACSignal
{
//    //CB2D35267432
//    [[ELockSDKSingleObject sharedInstance] openLockWithLockMac:lockMac successBlock:^(id result) {
//        NSLog(@"testOpenLockWithLockMac result:%@", result);
//    } failureBlock:^(NSError * _Nullable error) {
//        NSLog(@"testOpenLockWithLockMac failure:%@", error);
//    }];
}

@end
