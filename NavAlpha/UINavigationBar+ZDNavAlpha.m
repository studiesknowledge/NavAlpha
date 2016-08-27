//
//  UINavigationBar+ZDNavAlpha.m
//  NavAlpha
//
//  Created by 赵东亮 on 16/8/27.
//  Copyright © 2016年 赵东亮. All rights reserved.
//

#import "UINavigationBar+ZDNavAlpha.h"
#import <objc/runtime.h>


@implementation UINavigationBar (ZDNavAlpha)

static char alView;
- (void)setAlphaView:(UIView *)alphaView {
    
    
    // 第一个参数：关联的类：给哪个类扩展的属性
    // 第二个参数：记录的key值
    // 第三个参数：value值，增加的属性
    // 第四个参数：内存策略
    objc_setAssociatedObject(self, &alView, alphaView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

- (UIView *)alphaView {
    
    
    return objc_getAssociatedObject(self, &alView);
    
}

- (void)setalphaNavWithColor:(UIColor *)color {
    
    // 如果没有此属性，需要创建
    if (!self.alphaView) {
        
        // 设置导航栏背景图片，第二个参数的枚举值表示横竖屏都支持
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        
        // 创建UIView
        self.alphaView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
        
        // 添加
        [self insertSubview:self.alphaView atIndex:0];
    }
    
    // 设置UIview的背景颜色
    [self.alphaView setBackgroundColor:color];
}


@end
