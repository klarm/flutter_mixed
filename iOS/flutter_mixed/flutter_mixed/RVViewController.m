//
//  SecondViewController.m
//  UIkitDemo
//
//  Created by xionghao on 2018/6/1.
//  Copyright © 2018年 klarm. All rights reserved.
//

#import "RVViewController.h"
#import "QRVLuaCardBaseViewController.h"

@interface RVViewController ()

@end

@implementation RVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    QRVLuaCardBaseViewController *vc = [QRVLuaCardBaseViewController new];
    vc.scriptName = @"cardPage.lua";
    vc.mockData = @"QYViewDemo";
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    [vc didMoveToParentViewController:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
