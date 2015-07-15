//
//  FirstViewController.m
//  Tabbed_application
//
//  Created by optimusmac-12 on 14/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    NSArray *image;
    NSArray *title;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    title=[NSArray arrayWithObjects:@"First",@"Second",@"Third",@"Fourth",@"Five",@"Six",@"Seven",@"Eight",@"Nine",@"Ten",@"Eleven",@"Twelve",@"Thirteen",@"Fourteen",@"Fifteen",@"Sixteen",@"Seventeen",@"Eighteen",@"Nineteen",@"Twenty",nil];
    image=[NSArray arrayWithObjects:@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"18.png",@"19.png",@"20.png", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [title count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)path
{
    static NSString *tableidentify=@"SimpleTableCell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:tableidentify];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableidentify];
    }
    cell.textLabel.text=[title objectAtIndex:path.row];
    cell.imageView.image=[UIImage imageNamed:[image objectAtIndex:path.row]];
  
    return cell;
}
@end
