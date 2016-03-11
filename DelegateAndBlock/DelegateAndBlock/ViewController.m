//
//  ViewController.m
//  DelegateAndBlock
//
//  Created by 楚晨晨 on 16/3/11.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "ViewController.h"
#import "NormalTableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,NormalDelegate>
@property (nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [ self createUI];
    
    
}
- (void)createUI{
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    //注册cell
    [_tableView registerNib:[UINib nibWithNibName:@"NormalTableViewCell" bundle:nil] forCellReuseIdentifier:@"normalid"];
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NormalTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"normalid" forIndexPath:indexPath];
    cell.buttonDelegate = self;
    cell.buttonBlock = ^(NSString *str ){
    
        NSLog(@"%@",str);
    
    
    };
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.0;
    
}
- (void)buttonClick:(NSString *)buttonStr{

    NSLog(@"%@",buttonStr);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
