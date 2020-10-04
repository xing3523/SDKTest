//
//  XViewController.m
//  HudTool
//
//  Created by xing on 09/30/2020.
//  Copyright (c) 2020 xing. All rights reserved.
//

#import "XViewController.h"
#import <HudTool.h>
@interface XViewController ()

@end

@implementation XViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view.hud showInfo:@"show text"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
