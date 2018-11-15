/*
 * Copyright (c) 2018, klarm. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "RVExtensionViewController.h"
#import "RVTableViewItem.h"

@interface RVExtensionViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *itemArray;

@end

@implementation RVExtensionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addTableView];
    
    [self addTableItems];
    
    [self.tableView reloadData];
}

- (NSMutableArray *)itemArray {
    if (_itemArray == nil) {
        _itemArray = [NSMutableArray array];
    }
    return _itemArray;
}

- (void)addTableView {
    UITableView *tableView = [[UITableView alloc]init];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.tableView = tableView;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

- (void)addTableItems {
//    [self addTableItemWithTitle:@"富文本" detailText:@"基于TextKit" destVcClass:[RVTextViewController class] data:@""];
//    [self addTableItemWithTitle:@"事件" detailText:@"事件处理演示" destVcClass:[RVRVContentViewController class] data:nil];
}

- (void)addTableItemWithTitle:(NSString *)title detailText:(NSString *)detailText destVcClass:(Class)destVcClass data:(NSString*)data {
    RVTableViewItem *item = [[RVTableViewItem alloc]init];
    item.title = title;
    item.detailText = detailText;
    item.data = data;
    item.destVcClass = destVcClass;
    
    [self.itemArray addObject:item];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    RVTableViewItem *item = self.itemArray[indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.detailText;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    RVTableViewItem *item = self.itemArray[indexPath.row];
    if (item.destVcClass ) {
        UIViewController *vc = [[item.destVcClass alloc]init];
        vc.title = [NSString stringWithFormat:@"%@-%@", item.title, item.detailText];
        if ([vc respondsToSelector:@selector(setData:)]){
            [vc performSelector:@selector(setData:) withObject:item.data];
        }
        [self presentViewController:vc animated:YES completion:nil];
    }
}

@end
