//
//  DYSearchModel.h
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYCountryModel.h"
#import <Foundation/Foundation.h>

@interface DYSearchModel : NSObject

@property (nonatomic,copy) NSString * indexStr;

@property (nonatomic,strong) NSArray <DYCountryModel *>* dataArray;

@end
