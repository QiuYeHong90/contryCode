//
//  DYSearchCountryCodeViewController.h
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchModel.h"
#import <UIKit/UIKit.h>

@interface DYSearchCountryCodeViewController : UINavigationController


@property (nonatomic,copy) void(^CallBlock)(DYCountryModel * model);


@end
