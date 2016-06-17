//
//  LYQShortCutLoginView.m
//  购化妆品
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQShortCutLoginView.h"

@interface LYQShortCutLoginView()
@property (nonatomic, strong) UIView            * leftline;
@property (nonatomic, strong) UIView            * rightline;

/**  */
@property (nonatomic, strong) UILabel            * label;
/**  */
@property (nonatomic, strong) UIButton            * QQ;
@property (nonatomic, strong) UIButton            * weiXin;
@property (nonatomic, strong) UIButton            * sina;
@end


@implementation LYQShortCutLoginView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.leftline];
        [self addSubview:self.rightline];
        [self addSubview:self.label];
        [self addSubview:self.QQ];
        [self addSubview:self.weiXin];
        [self addSubview:self.sina];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self)weakSelf = self;
    [weakSelf.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.centerX.offset(0);
        make.width.equalTo(80);
        make.height.equalTo(17);
    }];
    [weakSelf.leftline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.label.mas_centerY);
        make.left.offset(16);
        make.right.equalTo(weakSelf.label.mas_left).offset(-16);
        make.height.equalTo(1);
        
    }];
    [weakSelf.rightline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.label.mas_centerY);
        make.right.offset(-16);
        make.left.equalTo(weakSelf.label.mas_right).offset(16);
        make.height.equalTo(1);
    }];
    [weakSelf.QQ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.label.mas_bottom).offset(20);
        
        make.width.height.equalTo(weakSelf.weiXin.mas_width);
        make.left.offset(61);
    }];
    [weakSelf.weiXin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.label.mas_bottom).offset(20);
        make.width.height.equalTo(45);
        make.centerX.equalTo(weakSelf.label.mas_centerX);
        
    }];
    [weakSelf.sina mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.label.mas_bottom).offset(20);
        make.width.height.equalTo(weakSelf.weiXin.mas_width);
        make.right.offset(-61);
    }];
}

-(UIView *)leftline{
    if (!_leftline) {
        _leftline = [[UIView alloc]init];
        _leftline.backgroundColor = LYQRGBColor(216, 216, 216);
    }
    return _leftline;
}

-(UIView *)rightline{
    if (!_rightline) {
        _rightline = [[UIView alloc]init];
        _rightline.backgroundColor = LYQRGBColor(216, 216, 216);
    }
    return _rightline;
}
-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]init];
        _label.text = @"一键登录";
        _label.textColor = LYQRGBColor(216, 216, 216);
    }
    return _label;
}
-(UIButton *)QQ{
    if (!_QQ) {
        _QQ = [UIButton buttonWithType:(UIButtonTypeSystem)];
      [_QQ setBackgroundImage:[UIImage imageNamed:@"登录界面qq登陆"] forState:(UIControlStateNormal)];
    }
    return _QQ;
}
-(UIButton *)weiXin{
    if (!_weiXin) {
        _weiXin = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_weiXin setBackgroundImage:[UIImage imageNamed:@"登录界面微信登录"] forState:(UIControlStateNormal)];
    }
    return _weiXin;
}
-(UIButton *)sina{
    if (!_sina) {
        _sina = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_sina setBackgroundImage:[UIImage imageNamed:@"登陆界面微博登录"] forState:(UIControlStateNormal)];
    }
    return _sina;
}
@end
