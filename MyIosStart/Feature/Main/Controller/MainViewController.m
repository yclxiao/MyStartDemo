//
//  MainViewController.m
//  MyIosStart
//
//  Created by yclxiao on 2017/8/17.
//  Copyright © 2017年 yclxiao. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    self.view.backgroundColor = [UIColor redColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"hello world";
    
    
    [self.view addSubview:label];
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"detail" style:UIBarButtonItemStylePlain target:self action:@selector(toDetailController)];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    
    // Do any additional setup after loading the view.
}

- (void)toDetailController{
    DetailViewController *detailController = [[DetailViewController alloc] init];
    detailController.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:detailController animated:YES];
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
