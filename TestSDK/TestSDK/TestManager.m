//
//  TestManager.m
//  TestSDK
//
//  Created by xing on 2020/10/3.
//  Copyright © 2020 xing. All rights reserved.
//

#import "TestManager.h"
#import <TestViewController.h>
@implementation TestManager

+ (UIViewController *)getTestViewController
{
    return TestViewController.new;
}
@end
