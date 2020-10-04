//
//  XViewController.m
//  TestModule
//
//  Created by xing on 10/03/2020.
//  Copyright (c) 2020 xing. All rights reserved.
//

#import "XViewController.h"
#import <TestViewController.h>
@interface XViewController ()

@end

@implementation XViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TestViewController *vc = [TestViewController new];
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
