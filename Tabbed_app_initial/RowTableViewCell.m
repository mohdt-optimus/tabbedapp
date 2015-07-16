//
//  RowTableViewCell.m
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 16/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "RowTableViewCell.h"

@implementation RowTableViewCell

@synthesize label=_label;
@synthesize thumbnail=_thumbnail;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
