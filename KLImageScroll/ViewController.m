//
//  ViewController.m
//  KLImageScroll
//
//  Created by WKL on 2019/12/27.
//  Copyright © 2019 Ray. All rights reserved.
//

#import "ViewController.h"
#import "KLImageScrollView.h"
#import <Masonry/Masonry.h>



@interface ViewController ()

@property(nonatomic,strong)KLImageScrollView *rImgScroll;

@property(nonatomic,strong)NSMutableArray *rDataArray;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"图片滑动";
    self.rDataArray = [NSMutableArray array] ;

    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_7a4e1gb7ji507jc29g0cifjhi3hfh_1080x810.jpg_320x999.v1c96.81.png"];
    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_5elhfe4dgdb00g7eld5i8dj3b7ef2_1080x810.jpg_320x999.v1c96.81.png"] ;
    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_0l58klij6c9e6ai68l63b5549jk3h_1080x810.jpg_160x999.v1c96.81.png"];
    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_31lflk36ibhff8f31466l6fk1e603_1080x810.jpg_320x999.v1c96.81.png"];

    [self.rDataArray addObject:@"https://s11.mogucdn.com/mlcdn/c45406/191215_4jkd3jehafjg088h5f40aji539hcg_1080x810.jpg_320x999.v1c96.81.png"];
    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_21b267f4g1799aldke11k64l6i779_1080x810.jpg_320x999.v1c96.81.png"];
    [self.rDataArray addObject:@"https://s5.mogucdn.com/mlcdn/c45406/191215_3f509387fj409b48f8gdld8d49c7i_1080x810.jpg_320x999.v1c96.81.png"] ;
    
    
    [self.view addSubview:self.rImgScroll];
    [self.rImgScroll mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsZero);
    }] ;
    
    self.rImgScroll.rBackImgUrlString = @"https://s5.mogucdn.com/mlcdn/c45406/191215_7a4e1gb7ji507jc29g0cifjhi3hfh_1080x810.jpg_320x999.v1c96.81.png";
    self.rImgScroll.rDataArray = self.rDataArray ;


}

-(KLImageScrollView*)rImgScroll {
    if (!_rImgScroll) {
        _rImgScroll = [[KLImageScrollView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth([[UIScreen mainScreen] bounds]), CGRectGetHeight(self.view.bounds))] ;
    }
    return _rImgScroll ;
}

@end
