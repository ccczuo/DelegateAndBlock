//
//  NormalTableViewCell.h
//  DelegateAndBlock
//
//  Created by 楚晨晨 on 16/3/11.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NormalDelegate <NSObject>
- (void)buttonClick:(NSString *)buttonStr;

@end
@interface NormalTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *myDele;
@property (weak, nonatomic) IBOutlet UIButton *myBloc;
@property (nonatomic, assign)id<NormalDelegate> buttonDelegate;
@property (copy, nonatomic) void (^buttonBlock)(NSString *str);
@end
