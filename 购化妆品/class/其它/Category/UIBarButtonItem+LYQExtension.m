

#import "UIBarButtonItem+LYQExtension.h"
#import "UIView+LYQExtension.h"
@implementation UIBarButtonItem (LYQExtension)

+(instancetype)itemWithIamge:(NSString *)image highImage:(NSString *)highImage target:(id)targer action:(SEL)action{
    //设置导航栏的按钮
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:(UIControlStateHighlighted)];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:targer action:action forControlEvents:(UIControlEventTouchUpInside)];
    
    return [[self alloc]initWithCustomView:button];
}

@end
