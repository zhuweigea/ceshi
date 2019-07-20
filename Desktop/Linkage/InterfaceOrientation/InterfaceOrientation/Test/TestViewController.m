//
//  TestViewController.m
//  InterfaceOrientation
//
//  Created by 朱伟阁 on 2019/6/23.
//  Copyright © 2019 朱伟阁. All rights reserved.
//

#import "TestViewController.h"
#import "BaseNavgationController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(20, 50, 100, 30);
    label.text = @"测试屏幕旋转";
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:label];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightBtn setTitle:@"上传" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(transform) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = rightItem;
    // Do any additional setup after loading the view from its nib.
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    self.webView.backgroundColor = [UIColor whiteColor];
    [self.webView loadRequest:request];
}

- (void)transform{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if([self.parentViewController isKindOfClass:[BaseNavgationController class]]){
        NSLog(@"有父控制器BaseNavgationController");
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
        NSLog(@"无父控制器");
    }
}

//是否支持屏幕旋转
- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeRight;
}

@end
