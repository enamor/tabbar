//
//  MeViewController.m
//  WeChatDemo
//
//  Created by lwx on 2016/11/3.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "MeViewController.h"
#import "UIView+ext.h"
#import "MyView.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:view1.bounds];
    [view1 addSubview: view2];
    view2.backgroundColor = [UIColor blueColor];
    
    [view2 addSubview:[[MyView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)]];
    
    // Do any additional setup after loading the view.
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

@end
