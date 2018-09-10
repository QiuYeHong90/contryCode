//
//  DYSearchViewController.h
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYSearchViewController : UIViewController
@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) NSMutableArray * dataArray;

@property (nonatomic,strong) NSMutableArray * tableArray;

@property (nonatomic,strong) NSArray * indexArray;
@end
