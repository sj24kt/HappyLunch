//
//  RootViewController.m
//  HappyLunch
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "OrderViewController.h"
#import "FoodTableViewCell.h"

@interface OrderViewController () <UITableViewDataSource, UITableViewDelegate, FoodTableViewCellDelegate>

@end

@implementation OrderViewController

NSString * const kFoodCell = @"FoodCell";

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFoodCell];
    cell.delegate = self;
    return cell;
}

- (void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button {


}

@end



















