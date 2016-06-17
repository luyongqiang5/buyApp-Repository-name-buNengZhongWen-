//
//  LYQClassController.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQClassController.h"

@interface LYQClassController ()

@end

@implementation LYQClassController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景色
    self.view.backgroundColor = LYQGlobalBg;
    //设置Navigation
    [self setUpNav];
}
-(void)setUpNav{
    //设置导航栏的标题
    UIButton * navTitleButton = [UIButton buttonWithType:UIButtonTypeSystem];
    navTitleButton.frame = CGRectMake(0, 0, 360, 30);
    [navTitleButton setTitle:@"商品名 / 功效 / 品牌" forState:(UIControlStateNormal)];
    [navTitleButton setTintColor:[UIColor colorWithRed:0.525 green:0.525 blue:0.549 alpha:1.000]];
//    navTitleButton.titleLabel.text = @"商品名 / 功效 / 品牌";
//    [navTitleButton.titleLabel setText:@"商品名 / 功效 / 品牌"];
//    navTitleButton.titleLabel.tintColor = [UIColor colorWithRed:0.525 green:0.525 blue:0.549 alpha:1.000];
    [navTitleButton.titleLabel setFont:[UIFont fontWithName:@"商品名 / 功效 / 品牌222" size:14]];
    [navTitleButton.titleLabel setTextColor:[UIColor colorWithRed:0.525 green:0.525 blue:0.549 alpha:1.000]];
    navTitleButton.imageView.image = [UIImage imageNamed:@"限时特卖界面搜索按钮"];
    [navTitleButton.layer setMasksToBounds:YES];
    [navTitleButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
    [navTitleButton addTarget:self action:@selector(classClick) forControlEvents:(UIControlEventTouchUpInside)];
    [navTitleButton setBackgroundColor:[UIColor colorWithWhite:0.871 alpha:1.000]];
    //图片右边距文字20
    UIEdgeInsets edgeInset = {0,0,0,20};
    navTitleButton.imageEdgeInsets = edgeInset;
    self.navigationItem.titleView = navTitleButton;
}
-(void)classClick{
    NSLog(@"classClick");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
