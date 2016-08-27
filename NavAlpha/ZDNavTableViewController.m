//
//  ZDNavTableViewController.m
//  NavAlpha
//
//  Created by 赵东亮 on 16/8/27.
//  Copyright © 2016年 赵东亮. All rights reserved.
//

#import "ZDNavTableViewController.h"
#import "UINavigationBar+ZDNavAlpha.h"

@interface ZDNavTableViewController ()

@end

@implementation ZDNavTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    //可以设置导航栏的颜色为蓝色
    UIColor *bc = [UIColor blueColor];
    
    // tableView滚动的y值
    CGFloat contentY = scrollView.contentOffset.y;
    
    //当scrollY变为40时，导航栏颜色开始发生变化
    CGFloat alphaScale = (40 + 64 - contentY) / 64;
    
    if (contentY > 40) {
        
        [self.navigationController.navigationBar setalphaNavWithColor:[bc colorWithAlphaComponent:alphaScale]];
    }else {
        
        // 如果contentY小于40 则颜色还是为蓝色
        [self.navigationController.navigationBar setalphaNavWithColor:[bc colorWithAlphaComponent:1]];
    }

}


@end
