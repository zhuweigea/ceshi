//
//  BaseNavgationController.m
//  InterfaceOrientation
//
//  Created by 朱伟阁 on 2019/6/23.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import "BaseNavgationController.h"
//#import <FDFullscreenPopGesture/UINavigationController+FDFullscreenPopGesture.h>

@interface BaseNavgationController ()

@end

@implementation BaseNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navBar = [UINavigationBar appearance];
    //设置背景颜色
    navBar.barTintColor = [UIColor redColor];
    navBar.translucent = NO;
    //设置title的字体颜色、字体大小
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:18]};
    //设置导航栏的样式
    navBar.barStyle = UIStatusBarStyleLightContent;
    //设置导航栏默认返回按钮颜色
    [navBar setTintColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
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
