//
//  DYSearchResultViewController.h
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchModel.h"
#import <UIKit/UIKit.h>

@interface DYSearchResultViewController : UIViewController<UISearchResultsUpdating>
@property (strong, nonatomic) UINavigationController *nav;
@property (strong, nonatomic) UISearchBar *searchBar;
@property (strong, nonatomic) NSMutableArray <DYCountryModel *>*dataListArry;
@end
