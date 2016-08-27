//
//  ZDNavTableViewController.m
//  NavAlpha
//
//  Created by 赵东亮 on 16/8/27.
//  Copyright © 2016年 赵东亮. All rights reserved.
//

#import "ZDNavTableViewController.h"

@interface ZDNavTableViewController ()

@end

@implementation ZDNavTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 100;
}



@end
