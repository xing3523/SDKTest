//
//  TestViewController.m
//  TestSDK
//
//  Created by xing on 2020/10/2.
//  Copyright © 2020 xing. All rights reserved.
//

#import "TestViewController.h"
#import "HudTool.h"
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"SDK页面";
    UIButton *button1 = [self createNormalButtonWithTitle:@"test1"];
    [button1 addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchUpInside];
    UIButton *button2 = [self createNormalButtonWithTitle:@"test2"];
    [button2 addTarget:self action:@selector(test2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    button1.frame = CGRectMake(100, 200, 80, 30);
    button2.frame = CGRectMake(100, 300, 80, 30);
}

- (void)test1
{
    [self.view.hud showInfo:@"test1"];
}

- (void)test2
{
    HudTool *hud = self.view.hud;
    [hud showLoadWithTitle:@"test2"];
    [hud hideLoadAfterDelay:3];
}

- (UIButton *)createNormalButtonWithTitle:(NSString *)title
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
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
