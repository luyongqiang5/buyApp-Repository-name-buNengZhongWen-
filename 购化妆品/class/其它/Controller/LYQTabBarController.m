//
//  LYQTabBarController.m
//  购化妆品
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 Lu. All rights reserved.
//

#import "LYQTabBarController.h"
#import "LYQTabBar.h"
#import "LYQNavigationController.h"
#import "LYQTimeController.h"
#import "LYQClassController.h"
#import "LYQShoppingCartController.h"
#import "LYQMeController.h"

#import "LYQLoginController.h"
#import "LYQRegisterController.h"

@interface LYQTabBarController ()

@end

@implementation LYQTabBarController

+(void)initialize{
    //通过appearance统一设置所有UITabBarItem的文字属性
    //    方法后面带有UI_APPEARANCE_SELECTOR的方法，都可以通过appearance对象来统一设置
    NSMutableDictionary *arrts = [NSMutableDictionary dictionary];
    arrts[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    arrts[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    
    NSMutableDictionary *selecteArrts = [NSMutableDictionary dictionary];
    selecteArrts[NSFontAttributeName] = arrts[NSFontAttributeName];
    selecteArrts[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.090 green:0.376 blue:1.000 alpha:1.000];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:arrts forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:selecteArrts forState:(UIControlStateSelected)];
}

-(void)viewDidLoad{
    [super viewDidLoad];

    //添加子控制器 LYQLoginController
//    [self setupChildVc:[[LYQRegisterController alloc]init] andTitle:@"注册" andImage:@"菜单栏限时特卖按钮未选中状态" andSelectedImage:@"菜单栏限时特卖按钮选中状态"];
//    [self setupChildVc:[[LYQLoginController alloc]init] andTitle:@"登录" andImage:@"菜单栏限时特卖按钮未选中状态" andSelectedImage:@"菜单栏限时特卖按钮选中状态"];
    
    [self setupChildVc:[[LYQTimeController alloc]init] andTitle:@"限时特卖" andImage:@"菜单栏限时特卖按钮未选中状态" andSelectedImage:@"菜单栏限时特卖按钮选中状态"];

    [self setupChildVc:[[LYQClassController alloc]init] andTitle:@"分类" andImage:@"菜单栏分类按钮未选中状态" andSelectedImage:@"菜单栏分类按钮选中状态"];
    [self setupChildVc:[[LYQShoppingCartController alloc]init] andTitle:@"购物车" andImage:@"菜单栏购物车按钮未选中状态" andSelectedImage:@"菜单栏购物车按钮选中状态"];
    [self setupChildVc:[[LYQMeController alloc]init] andTitle:@"其它" andImage:@"菜单栏我的按钮未选中状态" andSelectedImage:@"菜单栏我的按钮选中状态"];
    //更换TabBar
    [self setValue:[[LYQTabBar alloc]init] forKey:@"tabBar"];
    
    
}
/**
 *  初始化子控制器
 */
-(void)setupChildVc:(UIViewController *)vc andTitle:(NSString *)title andImage:(NSString *)image andSelectedImage:(NSString *)selectedImage{
    //设置文字和图片
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];;
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    //随机背景色(在这里设置颜色会程序一启动直接创建四个控制器  so不要在这里设置)
//        vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
    //    [self addChildViewController:vc];
    //包装一个导航控制器，添加导航控制器为tabbarcontroller的子控制器
    LYQNavigationController *nav = [[LYQNavigationController alloc]initWithRootViewController:vc];
    
    //    vc.navigationItem.title = title;
    [self addChildViewController:nav];
}


@end
