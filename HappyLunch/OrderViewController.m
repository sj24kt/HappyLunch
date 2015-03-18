//
//  RootViewController.m
//  HappyLunch
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "OrderViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface OrderViewController () <UITableViewDataSource, UITableViewDelegate, FoodTableViewCellDelegate, DrinkTableViewCellDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *selectedFoodImageView;
@property (strong, nonatomic) IBOutlet UIImageView *selectedDrinkImageView;

@end

@implementation OrderViewController

NSString * const kFoodCell = @"FoodCell";
NSString * const kDrinkCell = @"DrinkCell";

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.row == 0) {
        FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFoodCell];
        cell.delegate = self;
        return cell;
    } else {
        DrinkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDrinkCell];
        cell.delegate = self;
        return cell;
    }
}

- (void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedFoodImageView.image = button.imageView.image;
}

- (void)drinkTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedDrinkImageView.image = button.imageView.image;
}


@end



















