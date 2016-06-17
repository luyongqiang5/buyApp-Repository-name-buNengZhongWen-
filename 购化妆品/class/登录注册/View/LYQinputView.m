//
//  LYQinputView.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQinputView.h"

@interface LYQinputView()

/** 背景 */
@property (nonatomic, strong) UILabel            * backLabel;
/** 账号 */
@property (nonatomic, strong) UITextField            * nameText;
/** 密码 */
@property (nonatomic, strong) UITextField            * passText;
/** 分割线 */
@property (nonatomic, strong) UILabel            * lineLabel;
/** 登录按钮 */
@property (nonatomic, strong) UIButton            * loginButton;
/** 免费注册按钮 */
@property (nonatomic, strong) UIButton            * freeRegisterButton;

@end
@implementation LYQinputView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        [self addSubview:self.backLabel];
        [self addSubview:self.nameText];
        [self addSubview:self.lineLabel];
        [self addSubview:self.passText];
        [self addSubview:self.loginButton];
        [self addSubview:self.freeRegisterButton];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self)weakSelf = self;
    [weakSelf.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(15);
        make.left.right.offset(0);
        make.height.equalTo(89);
    }];
    [weakSelf.nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLabel);
        make.left.equalTo(weakSelf.backLabel).offset(15);
        make.right.equalTo(weakSelf.backLabel).offset(-15);
        make.height.equalTo(44);
    }];
    [weakSelf.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.nameText.mas_left);
        make.right.equalTo(weakSelf.nameText.mas_right);
        make.top.equalTo(weakSelf.nameText.mas_bottom);
        make.height.equalTo(1);
    }];
    [weakSelf.passText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.nameText.mas_left);
        make.right.equalTo(weakSelf.nameText.mas_right);
        make.top.equalTo(weakSelf.lineLabel.mas_bottom);
        make.height.equalTo(44);
    }];
    
    [weakSelf.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLabel.mas_bottom).offset(15);
        make.left.offset(15);
        make.right.offset(-15);
        make.height.equalTo(35);
    }];
    [weakSelf.freeRegisterButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.loginButton.mas_bottom).offset(17);
        make.width.equalTo(65);
        make.height.equalTo(17);
        make.right.offset(-15);
    }];
}

-(UILabel *)backLabel{
    if (!_backLabel) {
        _backLabel = [[UILabel alloc]init];
        _backLabel.backgroundColor = [UIColor whiteColor];
    }
    return _backLabel;
}

-(UITextField *)nameText{
    if (!_nameText) {
        _nameText = [[UITextField alloc]init];
        _nameText.borderStyle = UITextBorderStyleNone;
//        _nameText.backgroundColor = [UIColor redColor];
        _nameText.placeholder = @"请输入手机号";
    }
    return _nameText;
}

-(UITextField *)passText{
    if (!_passText) {
        _passText = [[UITextField alloc]init];
        _passText.borderStyle = UITextBorderStyleNone;
        _passText.placeholder = @"请输入密码";
        _passText.secureTextEntry = YES;
    }
    return _passText;
}
-(UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]init];
        _lineLabel.backgroundColor = LYQRGBColor(231, 231, 234);
    }
    return _lineLabel;
}
-(UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        _loginButton.backgroundColor = LYQRGBColor(37, 165, 241);
        [_loginButton setTitle:@"登 录" forState:(UIControlStateNormal)];
        [_loginButton.layer setMasksToBounds:YES];
        [_loginButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
        [_loginButton setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    }
    return _loginButton;
}
-(UIButton *)freeRegisterButton{
    if (!_freeRegisterButton) {
        _freeRegisterButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_freeRegisterButton setTitle:@"免费注册" forState:(UIControlStateNormal)];
        [_freeRegisterButton setTitleColor:LYQRGBColor(37, 165, 241) forState:(UIControlStateNormal)];
    }
    return _freeRegisterButton;
}

@end
