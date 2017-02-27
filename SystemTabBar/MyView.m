//
//  MyView.m
//  SystemTabBar
//
//  Created by zhouen on 17/2/24.
//  Copyright © 2017年 zn. All rights reserved.
//

#import "MyView.h"
#import "UIView+ext.h"
#import "ViewController.h"

@implementation MyView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)btnAction {
    [self.currentNav pushViewController:[ViewController new] animated:YES];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    btn.backgroundColor = [UIColor grayColor];
    [self addSubview:btn];
    
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}
@end
