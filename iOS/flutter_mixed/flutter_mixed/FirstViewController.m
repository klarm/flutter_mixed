//
//  FirstViewController.m
//  flutter_mixed
//
//  Created by xionghao on 2018/11/1.
//  Copyright © 2018年 klarm. All rights reserved.
//
#import <Flutter/Flutter.h>
#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"To Flutter Page" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)handleButtonAction {
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] init];
    //[flutterViewController setInitialRoute:@"route1"];
    [self presentViewController:flutterViewController animated:false completion:nil];
}


@end
