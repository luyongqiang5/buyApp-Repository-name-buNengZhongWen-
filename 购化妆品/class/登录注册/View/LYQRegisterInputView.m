//
//  LYQRegisterInputView.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQRegisterInputView.h"
#import "LYQTextField.h"

@interface LYQRegisterInputView ()


/** 提示 */
@property (nonatomic, strong) UILabel            * reminderLabel;
/** 背景 */
@property (nonatomic, strong) UILabel            * backLabel;
/** 账号 */
@property (nonatomic, strong) LYQTextField            * nameText;
/** 密码 */
@property (nonatomic, strong) LYQTextField            * passText;
/** 分割线 */
@property (nonatomic, strong) UILabel            * lineLabel;
/** 下一步 */
@property (nonatomic, strong) UIButton            * nextButton;
/** 去登录 */
@property (nonatomic, strong) UIButton            * gotoLoginButton;

@end

@implementation LYQRegisterInputView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.reminderLabel];
        [self addSubview:self.backLabel];
        [self addSubview:self.nameText];
        [self addSubview:self.passText];
        [self addSubview:self.lineLabel];
        [self addSubview:self.nextButton];
        [self addSubview:self.gotoLoginButton];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self)weakSelf = self;
    
    [weakSelf.reminderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(11);
        make.left.offset(15);
        make.height.offset(14);
    }];
    
    [weakSelf.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(35);
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
    
    [weakSelf.nextButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLabel.mas_bottom).offset(15);
        make.left.offset(15);
        make.right.offset(-15);
        make.height.equalTo(35);
    }];
    [weakSelf.gotoLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.nextButton.mas_bottom).offset(17);
        make.width.equalTo(65);
        make.height.equalTo(17);
        make.right.offset(-15);
    }];
}

-(UILabel *)reminderLabel{
    if (!_reminderLabel) {
        _reminderLabel = [[UILabel alloc]init];
        _reminderLabel.text = @"请输入手机号码注册新用户";
        [_reminderLabel setTextColor:LYQRGBColor(101, 101, 101)];
        _reminderLabel.font =  [UIFont boldSystemFontOfSize:14.0f];
    }
    return _reminderLabel;
}

-(UILabel *)backLabel{
    if (!_backLabel) {
        _backLabel = [[UILabel alloc]init];
        _backLabel.backgroundColor = [UIColor whiteColor];
    }
    return _backLabel;
}

-(LYQTextField *)nameText{
    if (!_nameText) {
        _nameText = [[LYQTextField alloc]init];
        _nameText.borderStyle = UITextBorderStyleNone;
        //        _nameText.backgroundColor = [UIColor redColor];
        _nameText.placeholder = @"请输入手机号";
        
    }
    return _nameText;
}

-(LYQTextField *)passText{
    if (!_passText) {
        _passText = [[LYQTextField alloc]init];
        _passText.borderStyle = UITextBorderStyleNone;
        _passText.placeholder = @"设置密码";
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
-(UIButton *)nextButton{
    if (!_nextButton) {
        _nextButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        _nextButton.backgroundColor = LYQRGBColor(229, 229, 229);
        [_nextButton setTitle:@"下一步" forState:(UIControlStateNormal)];
        [_nextButton.layer setMasksToBounds:YES];
        [_nextButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
        [_nextButton setTitleColor:LYQRGBColor(131, 131, 131) forState:(UIControlStateNormal)];
    }
    return _nextButton;
}
-(UIButton *)gotoLoginButton{
    if (!_gotoLoginButton) {
        _gotoLoginButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_gotoLoginButton setTitle:@"去登录" forState:(UIControlStateNormal)];
        [_gotoLoginButton setTitleColor:LYQRGBColor(37, 165, 241) forState:(UIControlStateNormal)];
    }
    return _gotoLoginButton;
}

@end
