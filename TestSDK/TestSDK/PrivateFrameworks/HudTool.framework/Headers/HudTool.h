//
//  HudTool.h
//
//
//  Created by xing on 2018/4/6.
//  Copyright © 2018年 xing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

@interface HudTool : NSObject
@property (nonatomic) float progress;
@property (nonatomic, copy) NSString *progressText;
- (void)setProgress:(float)progress withShowText:(NSString *)showText;
@property (nonatomic, strong, readonly) MBProgressHUD *hud;

- (id)initWithView:(UIView *)view;
- (id)initWithWindow;
- (void)hideLoad;
- (void)hideLoadAfterDelay:(NSTimeInterval)delay;
- (void)showLoad;
- (void)showLoadWithTitle:(NSString *)title;
- (void)showInfo:(NSString *)info;
- (void)showInfo:(NSString *)info autoHidden:(BOOL)autoHide;
- (void)showInfo:(NSString *)info image:(UIImage *)image hiddenDelay:(NSTimeInterval)delay;
- (void)showInfo:(NSString *)info progress:(CGFloat)progress;
@end

@interface UIView (HudTool)
- (HudTool *)hud;
@end
