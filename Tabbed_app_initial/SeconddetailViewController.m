//
//  SeconddetailViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 20/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "SeconddetailViewController.h"

@interface SeconddetailViewController ()

@end

@implementation SeconddetailViewController
@synthesize collect;
@synthesize collectionview;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    collectionview.image=[UIImage imageNamed:collect];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
