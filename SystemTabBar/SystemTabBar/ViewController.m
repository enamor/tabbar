//
//  ViewController.m
//  SystemTabBar
//
//  Created by zn on 15/12/4.
//  Copyright © 2015年 zn. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:[[MyView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
