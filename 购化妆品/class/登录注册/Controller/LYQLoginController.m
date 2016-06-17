//
//  LYQLoginController.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQLoginController.h"
#import "LYQinputView.h"
#import "LYQShortCutLoginView.h"
@interface LYQLoginController ()

@end

@implementation LYQLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景色
    self.view.backgroundColor = LYQGlobalBg;
    LYQinputView *input = [[LYQinputView alloc]init];
    input.frame = CGRectMake(0, 0, self.view.frame.size.width, 250);
    [self.view addSubview:input];
    LYQShortCutLoginView *shortCutLogin = [[LYQShortCutLoginView alloc]init];
    shortCutLogin.frame = CGRectMake(0,250, self.view.frame.size.width, 150);
    [self.view addSubview:shortCutLogin];
}
-(void)classClick{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
