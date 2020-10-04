//
//  HudTool.m
//
//
//  Created by xing on 2018/4/6.
//  Copyright © 2018年 xing. All rights reserved.
//

#import "HudTool.h"
@interface HudTool ()
@property (nonatomic, strong) MBProgressHUD *hud;
@property (nonatomic, weak) UIView *view;
@end

@implementation HudTool

- (id)init
{
    if (self = [super init]) {
        self.view = [UIApplication sharedApplication].keyWindow;
        [self initHud];
    }
    return self;
}

+ (instancetype)new
{
    return [[self alloc] initWithWindow];
}

- (id)initWithView:(UIView *)view
{
    if (!view) {
        return [self initWithWindow];
    }
    if (self = [super init]) {
        self.view = view;
        [self initHud];
    }
    return self;
}

- (id)initWithWindow
{
    self = [super init];
    if (self) {
        self.view = [UIApplication sharedApplication].windows.lastObject;
        [self initHud];
    }
    return self;
}

- (void)initHud
{
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:self.view];
    hud.removeFromSuperViewOnHide = YES;
    ///黑底白字
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    hud.contentColor = [UIColor whiteColor];
    self.hud = hud;
    [self.view addSubview:self.hud];
}

- (void)hideLoad
{
    [self.hud hideAnimated:YES];
}

- (void)hideLoadAfterDelay:(NSTimeInterval)delay
{
    [self.hud hideAnimated:YES afterDelay:delay];
}

- (void)showLoad
{
    [self showLoadWithTitle:@""];
}

- (void)showLoadWithTitle:(NSString *)title
{
    MBProgressHUD *hud = self.hud;
    hud.label.text = title;
    hud.detailsLabel.text = @"";
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showAnimated:YES];
}

- (void)showInfo:(NSString *)info
{
    [self showInfo:info autoHidden:YES];
}

- (void)showInfo:(NSString *)info autoHidden:(BOOL)autoHide
{
    [self showInfo:info image:nil hiddenDelay:autoHide ? 1.5 : 0];
}

- (void)showInfo:(NSString *)info image:(UIImage *)image hiddenDelay:(NSTimeInterval)delay
{
    MBProgressHUD *hud = self.hud;
    hud.label.text = @"";
    hud.label.numberOfLines = 0;
    hud.detailsLabel.text = @"";
    hud.detailsLabel.numberOfLines = 0;
    if (image) {
        hud.customView = [[UIImageView alloc] initWithImage:image];
        hud.mode = MBProgressHUDModeCustomView;
        hud.detailsLabel.font = hud.label.font;
        hud.detailsLabel.text = info;
    } else {
        hud.customView = nil;
        hud.mode = MBProgressHUDModeText;
        hud.label.text = info;
    }
    [hud showAnimated:YES];
    if (delay > 0) {
        [hud hideAnimated:YES afterDelay:delay];
    }
}

- (void)showInfo:(NSString *)info progress:(CGFloat)progress
{
    MBProgressHUD *hud = self.hud;
    hud.mode = MBProgressHUDModeAnnularDeterminate;
    hud.label.text = info;
    hud.detailsLabel.text = @"";
    [hud showAnimated:YES];
    hud.progress = progress;
}

- (void)setProgressText:(NSString *)progressText
{
    self.hud.label.text = progressText;
}

- (void)setProgress:(float)progress
{
    [self setProgress:progress withShowText:nil];
}

- (void)setProgress:(float)progress withShowText:(NSString *)showText
{
    self.hud.progress = progress;
    if (showText) {
        self.progressText = [NSString stringWithFormat:@"%@%.0f%%", showText, progress *100];
    }
}

@end

@implementation UIView (HudTool)

- (HudTool *)hud
{
    return [[HudTool alloc] initWithView:self];
}

@end
