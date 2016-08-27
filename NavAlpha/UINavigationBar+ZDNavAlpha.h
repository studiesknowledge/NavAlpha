//
//  UINavigationBar+ZDNavAlpha.h
//  NavAlpha
//
//  Created by 赵东亮 on 16/8/27.
//  Copyright © 2016年 赵东亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (ZDNavAlpha)

// 需要写setter、getter方法
@property (nonatomic,strong) UIView *alphaView;

- (void)setalphaNavWithColor:(UIColor *)color;


@end
