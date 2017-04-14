//
//  TableVC.m
//  lection6
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "TableVC.h"

@interface TableVC ()

@end

@implementation TableVC



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"Table";
    self.view.backgroundColor=[UIColor whiteColor];
    
    UITableView *tableView =[UITableView new];
    tableView.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:tableView];
    tableView.dataSource=self;
    tableView.delegate=self;
}


#pragma mark - UITableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text=[NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *vc=[UIViewController new];
    vc.view.backgroundColor=[UIColor redColor];
    vc.navigationItem.title=[NSString stringWithFormat:@"%ld",indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
