//
//  ViewController1ViewController.m
//  TBBZ
//
//  Created by Bangzhe Liu on 9/8/16.
//  Copyright © 2016 taobao. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(10,75,300,30)];
  [btn setTitle:@"present一个页面" forState:UIControlStateNormal];
  btn.titleLabel.backgroundColor = [UIColor blackColor];
  btn.titleLabel.font = [UIFont systemFontOfSize:14];
  btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  [btn addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)present {
  UINavigationController *vc = [[UINavigationController alloc]initWithRootViewController:[[ViewController2 alloc]init]];
  [self.navigationController presentViewController:vc animated:YES completion:^{
    
  }];
}

@end
