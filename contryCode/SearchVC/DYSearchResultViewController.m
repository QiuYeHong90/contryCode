//
//  DYSearchResultViewController.m
//  contryCode
//
//  Created by Mac on 2018/9/10.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "DYSearchCountryCodeViewController.h"
#import "DYSearchResultViewController.h"

@interface DYSearchResultViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *searchList;//满足搜索条件的数组
@end

@implementation DYSearchResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.searchList = [NSMutableArray new];
    self.dataListArry = [NSMutableArray new];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
//    self.automaticallyAdjustsScrollViewInsets = NO;//不加的话，table会下移
//    self.edgesForExtendedLayout = UIRectEdgeNone;//不加的话，UISearchBar返回后会上移
    
    self.searchBar.searchBarStyle = UISearchBarStyleProminent;
    [ self.searchBar setBackgroundImage:[UIImage new]];
    
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];

}


//- (void)viewWillLayoutSubviews{
//    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    [delegate tabbarHidden:YES];
//}


#pragma mark - tableView
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.searchBar resignFirstResponder];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.searchList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        static NSString *identifier = @"DYSearchResultCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
        }
    
        DYCountryModel * model = self.searchList[indexPath.row];
    
        cell.textLabel.text = model.name;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"+%@",model.dial_code];
//        cell.textLabel.textColor = [UIColor redColor];
        tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    DYCountryModel * rowModel  = self.dataListArry[indexPath.row];
    
    DYSearchCountryCodeViewController * nav = (DYSearchCountryCodeViewController *)self.nav;
    if (nav.CallBlock) {
        nav.CallBlock(rowModel);
    }
    [nav dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UISearchResultsUpdating
//每输入一个字符都会执行一次
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    NSLog(@"搜索关键字：%@",searchController.searchBar.text);
    searchController.searchResultsController.view.hidden = NO;
    NSString *property = @"name";
  
 
    //谓词搜索
    NSPredicate *preicate = [NSPredicate predicateWithFormat:@"%K CONTAINS %@",property, searchController.searchBar.text];
    if (self.searchList!= nil) {
        [self.searchList removeAllObjects];
    }
    
    //过滤数据
    NSMutableArray * temp = [NSMutableArray arrayWithArray:[_dataListArry filteredArrayUsingPredicate:preicate]];
    
    self.searchList = temp;
    //刷新表格
    
    [self.tableView reloadData];
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
