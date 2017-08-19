//
//  MyCell.m
//  MyIosStart
//
//  Created by yclxiao on 2017/8/19.
//  Copyright © 2017年 yclxiao. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype) cellWithTableView:(UITableView*) tableView{
    static NSString* identifer = @"cell";
    
    MyCell* mycell = [tableView dequeueReusableCellWithIdentifier:identifer];
    
    if (!mycell) {
        mycell = [[[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:nil options:nil] firstObject];
    }
    
    return mycell;

}

- (void) setCell:(NSString*) text{
    self.cellText.text = text;
    [self.cellBtn setTitle:[NSString stringWithFormat:@"%@%@",@"btn",text] forState:UIControlStateNormal];
}

@end
