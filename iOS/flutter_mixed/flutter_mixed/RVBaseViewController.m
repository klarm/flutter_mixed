/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "RVBaseViewController.h"
#import "UIButton+Block.h"

@interface RVBaseViewController () {
    UILabel *lblTitle;
}

@end

@implementation RVBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (_isShowTitleBar) {
        [self initTitleBar];
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)setBarTitle:(NSString *)title {
    lblTitle.text = title;
}

- (void)initTitleBar {
//    _titleBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, gw(self.view), NAV_BAR_HEIGHT)];
//    _titleBar.backgroundColor = colorWithHexString(@"#2b2b2d");
//    [self.view addSubview:_titleBar];
//    
//    lblTitle = [[UILabel alloc] initWithFrame:CGRectMake((gw(self.view) - 210)/2, (NAV_BAR_HEIGHT-44+kRVStatusBarHeight)/2, 210, 44)];
//    
//    [lblTitle setFont:[UIFont systemFontOfSize:18]];
//    lblTitle.textAlignment = NSTextAlignmentCenter;
//    lblTitle.lineBreakMode = NSLineBreakByTruncatingTail;
//    lblTitle.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    lblTitle.backgroundColor = [UIColor clearColor];
//    lblTitle.textColor =  colorWithHexString(@"#ffffff");
//    [_titleBar addSubview:lblTitle];
//    
//    UIButton *backbtn = [[UIButton alloc] initWithFrame:CGRectMake(0, (NAV_BAR_HEIGHT-35+kRVStatusBarHeight)/2, 35, 35)];
//    backbtn.backgroundColor = [UIColor clearColor];
//    [backbtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
//    [backbtn setTitleColor:colorWithHexString(@"#477000") forState:UIControlStateHighlighted];
//    [_titleBar addSubview:backbtn];
//    
//    __weak __typeof(self) weakSelf = self;
//    [backbtn handleControlEvent:UIControlEventTouchUpInside withBlock:^{
//        [weakSelf.sourceVC dismissViewControllerAnimated:YES completion:^{
//            //停止timer等
//        }];
//    }];
}

@end
