/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>
#import "RVBaseViewController.h"

@class RVPageData;
@class RVCardView;

@interface RVUIContentViewController : RVBaseViewController

@property (nonatomic, strong) RVPageData *pageData;
@property (nonatomic, strong) RVCardView *cardView;

@end

