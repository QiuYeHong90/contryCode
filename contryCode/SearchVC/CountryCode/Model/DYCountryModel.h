//
//  DYCountryModel.h
//  contryCode
//
//  Created by Mac on 2018/9/9.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYCountryModel : NSObject

/**
 国家代号
 */
@property (nonatomic,copy) NSString * code;

/**
 国家名称
 */
@property (nonatomic,copy) NSString * name;

/**
 手机区号
 */
@property (nonatomic,strong) NSNumber * dial_code;

/**
 国家名称拉丁文
 */
@property (nonatomic, strong) NSString *latin;
@end
