//
//  DYSearchCountryCodeViewController.m
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchViewController.h"
#import "DYSearchCountryCodeViewController.h"

@interface DYSearchCountryCodeViewController ()

@end

@implementation DYSearchCountryCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI
{
    
    [self setNavStyles];
    
    [self pushViewController:[DYSearchViewController new] animated:NO];
}

//设置导航条样式
- (void)setNavStyles{
//    UINavigationBar *bar = [UINavigationBar appearance];
    UINavigationBar *bar  = self.navigationBar;
    //设置显示的颜色 RGB(63,180,115)
    //    bar.barTintColor = [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    bar.barTintColor = [UIColor colorWithRed:63/255.0 green:180/255.0 blue:115/255.0 alpha:1.0];
    
    //设置字体颜色
    bar.tintColor = [UIColor whiteColor];//左右两边字体颜色
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    //替换原来的返回图片
    //    bar.backIndicatorImage = [UIImage imageNamed:@"icon_back"];
    //    bar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"icon_back"];
    
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:nil];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
