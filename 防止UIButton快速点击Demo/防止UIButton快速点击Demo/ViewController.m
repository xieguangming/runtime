//
//  ViewController.m
//  防止UIButton快速点击Demo
//
//  Created by xgm on 2017/12/19.
//  Copyright © 2017年 www.auratech.hk. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Custom.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //自定义UIButton
    UIButton  *ClickedBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    ClickedBtn.custom_acceptEventInterval = 2;
    [ClickedBtn setTitle:@"点击" forState:UIControlStateNormal];
    [ClickedBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    ClickedBtn.backgroundColor = [UIColor greenColor];
    ClickedBtn.frame = CGRectMake(100, 100, 120, 50);
    [ClickedBtn addTarget:self action:@selector(ClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:ClickedBtn];
    
}

-(void)ClickAction{
    NSLog(@"点击了按钮~~~~");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
