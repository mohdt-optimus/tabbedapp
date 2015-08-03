//
//  FirstViewController.m
//  Tabbed_application
//
//  Created by optimusmac-12 on 14/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "FirstViewController.h"
#import "RowTableViewCell.h"
#import "FirstDetailViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    NSArray *image;
    NSArray *title;
}
- (void)viewDidLoad {
    [super viewDidLoad];
  
    title=[NSArray arrayWithObjects:@"First",@"Second",@"Third",@"Fourth",@"Five",@"Six",@"Seven",@"Eight",@"Nine",@"Ten",@"Eleven",@"Twelve",@"Thirteen",@"Fourteen",@"Fifteen",@"Sixteen",@"Seventeen",@"Eighteen",@"Nineteen",@"Twenty",nil];
    image=[NSArray arrayWithObjects:@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"18.png",@"19.png",@"20.png", nil];
    //Populating Array of names and images with values which will be shown in application
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [title count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableidentify=@"Row";
    
    RowTableViewCell *cell=(RowTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableidentify];
    //Creating object of Table Row to use it to embed the text and image
    if(cell==nil)
    {
        NSArray *nib=[[NSBundle mainBundle] loadNibNamed:@"Row" owner:self options:nil];
        cell=[nib objectAtIndex:0];
    }
    cell.label.text=[title objectAtIndex:indexPath.row];
    cell.thumbnail.image=[UIImage imageNamed:[image objectAtIndex:indexPath.row]];
  //Populating the cell with image and its name
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"first"])
    {       //This will be called when Row of table will be clicked.This segue will send the details of image and text present at the selected row
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FirstDetailViewController *finalview=segue.destinationViewController;
        finalview.nameOrg=[title objectAtIndex:indexPath.row];
        finalview.picOrg=[image objectAtIndex:indexPath.row];
        //Updating the values of the name and image in the destination View Controller
        }
}

@end
