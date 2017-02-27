//
//  UIView+ext.m
//  SystemTabBar
//
//  Created by zhouen on 17/2/24.
//  Copyright © 2017年 zn. All rights reserved.
//

#import "UIView+ext.h"

@implementation UIView (ext)
- (UIViewController*)currentVC {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
        
    }
    
    return nil;
}

- (UINavigationController*)currentNav {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UINavigationController class]]) {
            return (UINavigationController*)nextResponder;
        }
    }
    return nil;
}

@end
