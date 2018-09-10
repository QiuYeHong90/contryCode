//
//  ViewController.m
//  contryCode
//
//  Created by Mac on 2018/9/9.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchCountryCodeViewController.h"
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.searchBar.contentMode = UIViewContentModeCenter;
    self.title = @"地区选择";
   
}
- (IBAction)popVC:(id)sender {
    
    DYSearchCountryCodeViewController * searchVC = [DYSearchCountryCodeViewController new];
    
    [self presentViewController:searchVC animated:YES completion:nil];
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
