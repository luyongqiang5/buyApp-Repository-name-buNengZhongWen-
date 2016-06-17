//
//  LYQTimeController.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQTimeController.h"
#import "UIBarButtonItem+LYQExtension.h"
@interface LYQTimeController ()

@end

@implementation LYQTimeController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景色
    self.view.backgroundColor = LYQGlobalBg;
    //设置Navigation
    [self setUpNav];
}
/**设置Navigation*/
-(void)setUpNav{
    //设置导航栏的标题
    self.navigationItem.title = @"LYQ";
    //设置导航栏右边的按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithIamge:@"限时特卖界面搜索按钮" highImage:@"限时特卖界面搜索按钮" target:self action:@selector(timeClick)];
}
-(void)timeClick{
    NSLog(@"限时特卖");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
