//
//  FirstDetailViewController.h
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 20/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (strong,nonatomic) NSString *nameOrg;
@property (strong,nonatomic) NSString *picOrg;

@end
