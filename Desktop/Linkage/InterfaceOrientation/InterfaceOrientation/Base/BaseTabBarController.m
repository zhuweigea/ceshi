//
//  BaseTabBarController.m
//  InterfaceOrientation
//
//  Created by 朱伟阁 on 2019/6/23.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavgationController.h"
#import "HomeViewController.h"
#import "ClassificationViewController.h"
#import "ShoppingCarViewController.h"
#import "MineViewController.h"
#import "TestViewController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    self.tabBar.backgroundColor = [UIColor whiteColor];
    [self initChildControllers];
    // Do any additional setup after loading the view.
}

- (void)initChildControllers{
    
    UITabBarItem *homeItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[[UIImage imageNamed:@"1-1.01"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"1-1.02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    HomeViewController *homeVC = [[HomeViewController alloc]init];
    BaseNavgationController *homeNav = [[BaseNavgationController alloc]initWithRootViewController:homeVC];
    homeNav.tabBarItem = homeItem;
    
    UITabBarItem *classificationItem = [[UITabBarItem alloc]initWithTitle:@"分类" image:[[UIImage imageNamed:@"1-1.03"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"1-1.04"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    ClassificationViewController *classificationVC = [[ClassificationViewController alloc]init];
    BaseNavgationController *classificationNav = [[BaseNavgationController alloc]initWithRootViewController:classificationVC];
    classificationNav.tabBarItem = classificationItem;
    
    UITabBarItem *shopItem = [[UITabBarItem alloc]initWithTitle:@"购物车" image:[[UIImage imageNamed:@"1-1.07"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"1-1.08"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    ShoppingCarViewController *shopVC = [[ShoppingCarViewController alloc]init];
    BaseNavgationController *shopNav = [[BaseNavgationController alloc]initWithRootViewController:shopVC];
    shopNav.tabBarItem = shopItem;
    
    UITabBarItem *mineItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[[UIImage imageNamed:@"1-1.09"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"1-1.10"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    MineViewController *mineVC = [[MineViewController alloc]init];
    BaseNavgationController *mineNav = [[BaseNavgationController alloc]initWithRootViewController:mineVC];
    mineNav.tabBarItem = mineItem;
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    
    self.viewControllers = @[homeNav,classificationNav,shopNav,mineNav];
}

//uitabbaritem是否选中 yes选中 no不选中(不再执行didselectviewcontroller)
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    BaseNavgationController *nav = (BaseNavgationController *)viewController;
    if([nav.topViewController isKindOfClass:[ClassificationViewController class]]){
        TestViewController *testVc = [[TestViewController alloc]init];
        [self presentViewController:testVc animated:YES completion:nil];
        return NO;
    }
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
}

@end
