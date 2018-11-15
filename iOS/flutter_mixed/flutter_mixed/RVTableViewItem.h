/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

@interface RVTableViewItem : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *detailText;
@property (nonatomic, strong) NSString *data;
@property (nonatomic, assign) Class destVcClass;

@end

