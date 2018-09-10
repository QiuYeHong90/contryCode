//
//  DYPhoneInputView.m
//  contryCode
//
//  Created by shuhui on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "CountryCodeTool.h"
#import "DYPhoneInputView.h"

@implementation DYPhoneInputView


-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = @[].mutableCopy;
    }
    return _dataArray;
}


-(void)awakeFromNib
{
    [super awakeFromNib];
    [self initUI];
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        DYPhoneInputView * view = [[NSBundle mainBundle] loadNibNamed:@"DYPhoneInputView" owner:self options:nil][0];
        view.frame = self.bounds;
        [self addSubview:view];
    }
    return self;
}


-(void)initUI
{
    [self.dataArray setArray: [CountryCodeTool getCodeArray]];
    
    
   
   
    
    
}

- (IBAction)tfChanged:(UITextField *)sender {
    
    NSString * text = sender.text;
    
    NSPredicate * pred= [NSPredicate predicateWithFormat:@"dial_code = %@",text];
    
    NSArray * dataArr = [self.dataArray filteredArrayUsingPredicate:pred];
    
    if (dataArr&&dataArr.count>0) {
         DYCountryModel * model = [dataArr lastObject];
        self.areaLab.text = model.name;
    }else{
        self.areaLab.text = @"国家/地区代码无效";
    }
    
}



/**
 去选择地区

 @param sender <#sender description#>
 */
- (IBAction)toSearchVC:(id)sender {
    
    
    
    NSLog(@"去选择");
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
