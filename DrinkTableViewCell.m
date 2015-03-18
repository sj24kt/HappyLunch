//
//  DrinkTableViewCell.m
//  HappyLunch
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

// thread the delegate method
- (IBAction)onDrinkItemTapped:(UIButton *)sender {

    [self.delegate drinkTableViewCell:self didTapButton:sender];

}

@end
