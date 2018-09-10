//
//  CountryCodeTool.h
//  contryCode
//
//  Created by Mac on 2018/9/9.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchModel.h"
#import <Foundation/Foundation.h>

@interface CountryCodeTool : NSObject



@property (nonatomic,strong) NSArray * tempArray;


/**
 获取数组
 */
+(NSArray<DYCountryModel *> *)getCodeArray;
//接下来 我们把获取过的数据根据’A’-‘Z’进行归类
+(NSDictionary *)searchClassified:(NSArray *)dataArray;
+(NSArray <DYSearchModel *>*)getTableArray:(NSArray *)dataArray;
@end
