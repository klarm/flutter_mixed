/*
 * Copyright (c) 2018, iQiYi. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

#define kWalletBankCardImageAPI(type, name) [NSString stringWithFormat:@"https://pay.iqiyi.com/image/%@/%@", type, name]
#define kWalletBankCardImageBankBg @"bank_bg"
#define kWalletBankCardImageBankIcon @"bank_icon"
#define kWalletBankCardImageWalletTrade @"wallet_trade"

@interface RVBaseViewController : UIViewController

@property (nonatomic, assign) BOOL isShowTitleBar;
@property (nonatomic, weak)   UIViewController *sourceVC;
@property (nonatomic, strong) UIView *titleBar;

- (void)setBarTitle:(NSString *)title;

@end

