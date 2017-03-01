//
//  RootBarViewController.h
//  tabbar
//
//  Created by zhouen on 13/2/20.
//  Copyright © 2013年 zn. All rights reserved.
//



#import "RootBarViewController.h"
#import "BaseNavController.h"
#import "CustomTabBar.h"

#define kClassKey   @"rootVCClassString"
#define kTitleKey   @"title"
#define kImgKey     @"imageName"
#define kSelImgKey  @"selectedImageName"
#define kThemeColor [UIColor colorWithRed:0 green:(190 / 255.0) blue:(12 / 255.0) alpha:1]

@interface RootBarViewController ()
@end

@implementation RootBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#warning TODO YES/NO
    if (YES) {
        CustomTabBar *tabBar = [[CustomTabBar alloc]initWithFrame:self.tabBar.frame];
        [self setValue:tabBar forKeyPath:@"tabBar"];
        tabBar.clickBlock = ^(){
#warning TODO presentViewController
            [self presentViewController:[UIViewController new] animated:YES completion:nil];
            
        };
    }
    
    [self p_setupSubviews];
    
    //背景颜色
    [self.tabBar setBarTintColor:[UIColor whiteColor]];
    //取消tabBar的透明效果。
    self.tabBar.translucent = NO;
    
    //去处顶部分割线
    [self.tabBar setShadowImage:[UIImage new]];
    [self.tabBar setBackgroundImage:[UIImage new]];
    
    //阴影
    self.tabBar.layer.shadowOpacity = 0.15;
    
}

- (void)p_setupSubviews {
    NSArray *childItemsArray = @[
                                 @{kClassKey  : @"HomeViewController",
                                   kTitleKey  : @"微信",
                                   kImgKey    : @"tabbar_mainframe",
                                   kSelImgKey : @"tabbar_mainframeHL"},
                                 
                                 @{kClassKey  : @"ContactsViewController",
                                   kTitleKey  : @"通讯录",
                                   kImgKey    : @"tabbar_contacts",
                                   kSelImgKey : @"tabbar_contactsHL"},
                                 
                                 @{kClassKey  : @"DiscoverViewController",
                                   kTitleKey  : @"发现",
                                   kImgKey    : @"tabbar_discover",
                                   kSelImgKey : @"tabbar_discoverHL"},
                                 
                                 @{kClassKey  : @"MeViewController",
                                   kTitleKey  : @"我",
                                   kImgKey    : @"tabbar_me",
                                   kSelImgKey : @"tabbar_meHL"} ];
    
   
    [childItemsArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        UIViewController *vc = [NSClassFromString(dict[kClassKey]) new];
        vc.title = dict[kTitleKey];
        BaseNavController *nav = [[BaseNavController alloc] initWithRootViewController:vc];
        UITabBarItem *item = nav.tabBarItem;
        item.title = dict[kTitleKey];
        item.image = [[UIImage imageNamed:dict[kImgKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        item.selectedImage = [[UIImage imageNamed:dict[kSelImgKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //title间距
        item.titlePositionAdjustment = UIOffsetMake(0, -2);
        item.imageInsets = UIEdgeInsetsMake(-2, 0, 2, 0);
        
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName : kThemeColor} forState:UIControlStateSelected];
        [self addChildViewController:nav];
    }];
    self.selectedIndex = 1;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
