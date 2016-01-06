//
//  ViewController.m
//  horizontalScrollingSelector
//
//  Created by Sarfaraz Hussain on 06/01/2016.
//  Copyright © 2016 Sarfaraz Hussain. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *tableData;

- (void)viewDidLoad {
    self.tableView.rowHeight = 60.0;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    // Rotates the view.
    CGAffineTransform transform = CGAffineTransformMakeRotation(-1.5707963);
    self.tableView.transform = transform;
    // Repositions and resizes the view.
    CGRect contentRect = CGRectMake(0, 90, 320, 300);
    self.tableView.frame = contentRect;
//    self.tableView.pagingEnabled= YES;
    [super viewDidLoad];
tableData = [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", @"five", @"six",@"seven",@"eight",@"nine",@"ten", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAffineTransform transform = CGAffineTransformMakeRotation(1.5707963);
    cell.transform = transform;
}

@end
