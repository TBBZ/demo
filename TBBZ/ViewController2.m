//
//  ViewController2.m
//  TBBZ
//
//  Created by Bangzhe Liu on 9/8/16.
//  Copyright © 2016 taobao. All rights reserved.
//

#import "ViewController2.h"
#import "BZUtils.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
  [super viewDidLoad];
  UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(10,75,300,30)];
  [btn setTitle:@"dismiss当前页面" forState:UIControlStateNormal];
  btn.titleLabel.backgroundColor = [UIColor blackColor];
  btn.titleLabel.font = [UIFont systemFontOfSize:14];
  btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  [btn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn];
  
  UIButton * btn2 = [[UIButton alloc] initWithFrame:CGRectMake(10,105,300,30)];
  [btn2 setTitle:@"先dismiss当前页面再重新present当前页面" forState:UIControlStateNormal];
  btn2.titleLabel.backgroundColor = [UIColor blackColor];
  btn2.titleLabel.font = [UIFont systemFontOfSize:14];
  btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  [btn2 addTarget:self action:@selector(dismissPresent) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn2];
  
  UIButton * btn3 = [[UIButton alloc] initWithFrame:CGRectMake(10,135,300,30)];
  [btn3 setTitle:@"继续present当前页面" forState:UIControlStateNormal];
  btn3.titleLabel.backgroundColor = [UIColor blackColor];
  btn3.titleLabel.font = [UIFont systemFontOfSize:14];
  btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  [btn3 addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismiss {
  [self.navigationController dismissViewControllerAnimated:YES completion:^{
    
  }];
}

- (void)dismissPresent {
  [self dismiss];
  [self present];
}

- (void)present {
  UINavigationController *vc = [[UINavigationController alloc]initWithRootViewController:[[ViewController2 alloc]init]];
  [[BZUtils getTopViewController] presentViewController:vc animated:YES completion:^{
    
  }];
}

@end
