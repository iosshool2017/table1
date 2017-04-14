//
//  ViewController5.m
//  lection6
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "ViewController5.h"
#import "ViewController4.h"

@interface ViewController5 ()

@end

@implementation ViewController5

-(instancetype)init{
    self=[super init];
    if(self){
        self.tabBarItem.title=@"5";
        self.navigationItem.title=@"5";
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    UIButton *btn=[UIButton new];
    btn.backgroundColor=[UIColor redColor];
    CGRect bounds =self.view.bounds;
    btn.frame=CGRectMake(bounds.size.width/2 -50, bounds.size.height/2 -20, 100, 40);
    [btn setTitle:@"perekhod" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton *tob=[UIButton new];
    tob.backgroundColor=[UIColor redColor];
    tob.frame=CGRectMake(bounds.size.width/2 -50, bounds.size.height/2 -80, 100, 40);
    [tob setTitle:@"to the roots" forState:UIControlStateNormal];
    [tob setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [tob addTarget:self action:@selector(buttonClickRoots:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:tob];

}

-(void)buttonClick:(UIButton*)button{
    ViewController4 *vc4=[ViewController4 new];
    [self.navigationController pushViewController:vc4 animated:YES];
}

-(void)buttonClickRoots:(UIButton*)button{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
