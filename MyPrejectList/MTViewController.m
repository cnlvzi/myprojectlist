//
//  MTViewController.m
//  MyProjectList
//
//  Created by matt on 13-1-27.
//  Copyright (c) 2013年 matt. All rights reserved.
//

#import "MTViewController.h"
#import "MTAdressViewController.h"
@interface MTViewController ()

@end

@implementation MTViewController
@synthesize myprojectlist;

- (void)viewDidLoad
{
    self.myprojectlist=[[NSMutableArray alloc] initWithObjects:@"测试1",@"测试2",nil];
    
    [super viewDidLoad];
    self.title = @"分类"; 
	// Do any aditional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.myprojectlist.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *SimpleTableIdentifier=@"SimpleTableIdentifier";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil) {
        
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier]  ;
    }
    NSUInteger row=[indexPath row];
    cell.textLabel.text=[myprojectlist objectAtIndex:row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            MTAdressViewController *vc = [[MTAdressViewController alloc] initWithNibName:@"MTAdressViewController"
                                                                                  bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];

            break;
        }
        default:
            break;
    }
    
}


@end
