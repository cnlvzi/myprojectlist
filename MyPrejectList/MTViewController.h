//
//  MTViewController.h
//  MyPrejectList
//
//  Created by matt on 13-1-28.
//  Copyright (c) 2013年 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *myprojectlist;
    
}
@property (nonatomic,retain) NSMutableArray *myprojectlist;
@end
