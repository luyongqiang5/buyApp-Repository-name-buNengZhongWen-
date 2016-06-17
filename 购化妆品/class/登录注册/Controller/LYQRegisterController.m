//
//  LYQRegisterController.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQRegisterController.h"
#import "LYQShortCutLoginView.h"
#import "LYQRegisterInputView.h"
@interface LYQRegisterController ()

@end

@implementation LYQRegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = LYQGlobalBg;
    
    self.view.backgroundColor = LYQGlobalBg;
    LYQRegisterInputView *input = [[LYQRegisterInputView alloc]init];
    input.frame = CGRectMake(0, 0, self.view.frame.size.width, 250);
    [self.view addSubview:input];
    
    LYQShortCutLoginView *shortCutLogin = [[LYQShortCutLoginView alloc]init];
    shortCutLogin.frame = CGRectMake(0,250, self.view.frame.size.width, 150);
    [self.view addSubview:shortCutLogin];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
