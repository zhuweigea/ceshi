//
//  HomeViewController.m
//  InterfaceOrientation
//
//  Created by 朱伟阁 on 2019/6/23.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import "HomeViewController.h"
#import "TestViewController.h"
#import "ScrollViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"首页";
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightBtn setTitle:@"版本" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(transform) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = rightItem;
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)jump:(id)sender {
    TestViewController *testVc = [[TestViewController alloc]init];
    testVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testVc animated:YES];
}

- (IBAction)sv:(id)sender {
    ScrollViewController *svc = [[ScrollViewController alloc]init];
    svc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:svc animated:YES];
}

- (IBAction)tv:(id)sender {
    UITableViewController *tvc = [[UITableViewController alloc]initWithStyle:UITableViewStylePlain];
    tvc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:tvc animated:YES];
}

- (void)transform{
    
}

@end
