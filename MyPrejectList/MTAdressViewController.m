//
//  MTAdressViewController.m
//  MyPrejectList
//
//  Created by matt on 13-1-28.
//  Copyright (c) 2013年 matt. All rights reserved.
//

#import "MTAdressViewController.h"
#import "MTViewController.h"
@interface MTAdressViewController ()

@end

@implementation MTAdressViewController

- (IBAction)toggleMenu:(id)sender {
//    MTViewController *vc = [[MTViewController alloc] initWithNibName:@"MTViewController"
//                                                              bundle:nil];
//    [self.navigationController popToViewController:vc animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:YES];

    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"顶啊";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
