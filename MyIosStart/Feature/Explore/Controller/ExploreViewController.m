//
//  ExploreViewController.m
//  MyIosStart
//
//  Created by yclxiao on 2017/8/17.
//  Copyright © 2017年 yclxiao. All rights reserved.
//

#import "ExploreViewController.h"
#import "MyCell.h"

@interface ExploreViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *myTableView;
@end

@implementation ExploreViewController

#pragma mark - property
- (UITableView*) myTableView{
    if (!_myTableView) {
        
        _myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        //因为我们这里用的是动态单元格了，因此这个单元格必须有一个ID。这里，我设置该单元格的ID为"tableviewcell"
        [_myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"tableviewcell"];
        
        _myTableView.dataSource = self;
        
        _myTableView.delegate = self;
        
    }
    return _myTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.myTableView];
    
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

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"test");
    
    //进入二级页面时，再返回，此列是非选中状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    UITableViewCell* tableViewCell = [tableView dequeueReusableCellWithIdentifier:@"tableviewcell" forIndexPath:indexPath];
//    tableViewCell.textLabel.text = [NSString stringWithFormat:@"%@ %ld",@"text",(long)indexPath.row];
//    tableViewCell.imageView.image = [UIImage imageNamed:@"baomu"];

    
    //    tableViewCell.layer.shouldRasterize = YES;
    //    tableViewCell.layer.rasterizationScale = [UIScreen mainScreen].scale;
    
//    return tableViewCell;
    
    MyCell* mycell = [MyCell cellWithTableView:tableView];
    [mycell setCell:[NSString stringWithFormat:@"%@ %ld",@"text",(long)indexPath.row]];
    
    return mycell;
}

@end
