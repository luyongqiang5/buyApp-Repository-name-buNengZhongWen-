//
//  LYQTabBar.m
//  购化妆品
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQTabBar.h"
#import "UIView+LYQExtension.h"
@interface LYQTabBar()
/** 发布按钮 */
@property (weak,nonatomic) UIButton          * publishButton;
@end

@implementation LYQTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //设置TabBar的背景图片
//        [self setBackgroundImage:[UIImage imageNamed:@""]];
        //添加发布按钮
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [publishButton setBackgroundImage:[UIImage imageNamed:@""] forState:(UIControlStateNormal)];
//        [publishButton setBackgroundImage:[UIImage imageNamed:@""] forState:(UIControlStateSelected)];
        
        publishButton.size = publishButton.currentBackgroundImage.size;
        [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    return self;
}

@end
