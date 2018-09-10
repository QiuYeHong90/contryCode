//
//  DYPhoneInputView.h
//  contryCode
//
//  Created by shuhui on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE


@interface DYPhoneInputView : UIView


/**
 地区
 */
@property (weak, nonatomic) IBOutlet UILabel *areaLab;

/**
 标题
 */
@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@property (nonatomic,strong) IBInspectable UIColor * bgColor;

@property (nonatomic,strong) NSMutableArray * dataArray;

/**
 区号
 */
@property (weak, nonatomic) IBOutlet UITextField *detailLab;

/**
 电话号码
 */
@property (weak, nonatomic) IBOutlet UITextField *phoneLab;

@end
