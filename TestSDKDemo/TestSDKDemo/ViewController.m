//
//  ViewController.m
//  TestSDKDemo
//
//  Created by xing on 2020/10/2.
//  Copyright © 2020 xing. All rights reserved.
//

#import "ViewController.h"
#if Static
#import <TestSDK_Static/TestSDK.h>
#elif Dy_RemoveMB
#import <TestSDK_Dynamic_RemoveMB/TestSDK.h>
#elif Dy_All
#import <TestSDK_Dynamic_All/TestSDK.h>
#elif Dy_RemoveAll
#import <TestSDK_Dynamic_RemoveAll/TestSDK.h>
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"test" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    [self.view addSubview:button];
    button.center = self.view.center;
}

- (void)test
{
    [self.navigationController pushViewController:[TestManager getTestViewController] animated:YES];
}

@end
