/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef void (^ActionBlock)(void);

@interface UIButton(Block)

@property (readonly) NSMutableDictionary *event;

- (void)handleControlEvent:(UIControlEvents)controlEvent withBlock:(ActionBlock)action;

@end
