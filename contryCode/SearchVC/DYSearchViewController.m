//
//  DYSearchViewController.m
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchModel.h"
#import "CountryCodeTool.h"
#import "DYSearchViewController.h"

@interface DYSearchViewController ()<UITableViewDelegate,UITableViewDataSource>



@end

@implementation DYSearchViewController

-(NSMutableArray *)tableArray
{
    if (!_tableArray) {
        _tableArray =  @[].mutableCopy;
    }
         return _tableArray;
}

-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = @[].mutableCopy;
    }
    return _dataArray;
}

-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,  [UIScreen mainScreen].bounds.size.height) style:UITableViewStyleGrouped];
    }
    
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"地区选择";
    
    [self initUI];
    [self loadData];
    
}

-(void)loadData
{
    NSArray * dataArr = [CountryCodeTool getCodeArray];
    
   
    
    [self.dataArray setArray:dataArr];
     [self.tableArray setArray:[CountryCodeTool getTableArray:dataArr]];
    
    NSMutableArray * temp = @[].mutableCopy;
    for (DYSearchModel * model in self.tableArray) {
        [temp addObject:model.indexStr];
    }
    self.indexArray = temp;
    
    [self.tableView reloadData];
}


-(void)initUI
{
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.tableArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    DYSearchModel * model  =  self.tableArray[section];
    return model.dataArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DYCountrySearchCell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DYCountrySearchCell"];
    }
    DYSearchModel * model = self.tableArray[indexPath.section];
    DYCountryModel * rowModel  = model.dataArray[indexPath.row];
    cell.textLabel.text = rowModel.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"+%@",rowModel.dial_code];
    
    return cell;
}



//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    UITableViewHeaderFooterView * view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"DYCountryHeaderView"];
//
//    if (!view) {
//        view = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"DYCountryHeaderView"];
//    }
//    DYSearchModel * model = self.tableArray[section];
//    view.textLabel.text = model.indexStr;
//    return view;
//}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    DYSearchModel * model = self.tableArray[section];
//    view.textLabel.text = model.indexStr;
    
    return model.indexStr;
}
- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    
    return self.indexArray;
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
