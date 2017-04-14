//
//  ViewController2.m
//  lection6
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController1.h"

@interface ViewController2 ()

@end

@implementation ViewController2
-(instancetype)init{
    self=[super init];
    if(self){
        self.tabBarItem.title=@"second";
    }
    return self;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    UIButton *btn=[UIButton new];
    btn.backgroundColor=[UIColor redColor];
    CGRect bounds =self.view.bounds;
    btn.frame=CGRectMake(bounds.size.width/2 -50, bounds.size.height/2 -20, 100, 40);
    [btn setTitle:@"vozvrat" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    

}

-(void)buttonClick:(UIButton*)button{

    [self.navigationController popViewControllerAnimated:YES];
    
    
}


@end
