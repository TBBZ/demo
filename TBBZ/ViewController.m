//
//  ViewController.m
//  TBBZ
//
//  Created by Bangzhe Liu on 7/29/16.
//  Copyright © 2016 taobao. All rights reserved.
//

#import "ViewController.h"
#import "CategoryTest.h"
#import "ViewController1.h"

@interface CategoryTest()
+ (void)addSubView:(UIView *)parentView view:(UIView *)view;
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  CGFloat mainWidth = [UIScreen mainScreen ].bounds.size.width;
  // Do any additional setup after loading the view, typically from a nib.
  UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(10,75,mainWidth-10,30)];
  [btn setTitle:@"push一个页面,解决先dismiss导致后面present的也没了的bug" forState:UIControlStateNormal];
  btn.titleLabel.backgroundColor = [UIColor blackColor];
  btn.titleLabel.font = [UIFont systemFontOfSize:12];
  btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
  [CategoryTest addSubView:self.view view:btn];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)push {
  [self.navigationController pushViewController:[[ViewController1 alloc]init] animated:YES];
}

@end
