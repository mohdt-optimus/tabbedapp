//
//  FirstViewController.h
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 14/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end

