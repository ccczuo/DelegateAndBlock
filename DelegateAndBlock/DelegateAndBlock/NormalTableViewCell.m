//
//  NormalTableViewCell.m
//  DelegateAndBlock
//
//  Created by 楚晨晨 on 16/3/11.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "NormalTableViewCell.h"


@implementation NormalTableViewCell


- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)buttonDel:(id)sender {
    [self.buttonDelegate buttonClick:@"这是第一个用delegate"];
    
    
}
- (IBAction)buttonBloc:(UIButton *)sender {
    self.buttonBlock(@"这是用的block实现的");
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
