

#import <UIKit/UIKit.h>

@interface UIView (LYQExtension)
/* 在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量 */
@property (assign,nonatomic) CGSize           size;

@property (assign,nonatomic) CGFloat          width;
@property (assign,nonatomic) CGFloat          height;
@property (assign,nonatomic) CGFloat          x;
@property (assign,nonatomic) CGFloat          y;
@property (nonatomic, assign) CGFloat           centerX;
@property (nonatomic, assign) CGFloat           centerY;


@end
