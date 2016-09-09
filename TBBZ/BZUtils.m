//
//  BZUtils.m
//  TBBZ
//
//  Created by Bangzhe Liu on 7/29/16.
//  Copyright © 2016 taobao. All rights reserved.
//

#import "BZUtils.h"

@implementation BZUtils

+ (UIWindow *)getUIWindow {
  UIWindow *window = nil;
  id<UIApplicationDelegate> windowDelegate =
  [UIApplication sharedApplication].delegate;
  if ([windowDelegate respondsToSelector:@selector(window)]) {
    window = [[UIApplication sharedApplication].delegate window];
  }
  
  if (!window) {
    window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
      NSArray *windows = [[UIApplication sharedApplication] windows];
      for (UIWindow *tmpWin in windows) {
        if (tmpWin.windowLevel == UIWindowLevelNormal) {
          window = tmpWin;
          break;
        }
      }
    }
  }
  return window;
}

+ (UIViewController*)getTopViewController {
  UIWindow * window = [self getUIWindow];
  UIViewController* vc = window.rootViewController;
  UIViewController* retVc = vc;
  while (retVc.presentedViewController) {
    vc = retVc;
    retVc =retVc.presentedViewController;
  }
  if([retVc isBeingDismissed]) {
    return vc;
  }else {
    return retVc;
  }
}

@end
