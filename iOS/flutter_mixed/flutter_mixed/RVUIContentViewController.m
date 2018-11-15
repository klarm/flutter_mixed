/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "RVUIContentViewController.h"

@interface RVUIContentViewController () {
}

@end

@implementation RVUIContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setBarTitle:self.title];
    
    [self initCardView];
    [self.view bringSubviewToFront:self.titleBar];
}

- (void)dealloc {
    self.cardView = nil;
    self.pageData = nil;
}

- (void)initCardView {
}

- (void)setData:(NSString*)data {
}

@end
