//
//  MyCell.h
//  MyIosStart
//
//  Created by yclxiao on 2017/8/19.
//  Copyright © 2017年 yclxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

+ (instancetype) cellWithTableView:(UITableView*) tableView;
@property (weak, nonatomic) IBOutlet UILabel *cellText;
@property (weak, nonatomic) IBOutlet UIButton *cellBtn;

- (void) setCell:(NSString*) text;

@end
