/*
 * Copyright (c) 2018, iQiYi. All rights reserved.
 *
 * This source code is licensed under the MIT.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */

#import "RVUICaseViewController.h"
#import "RVTableViewItem.h"
#import "RVBaseViewController.h"

@interface RVUICaseViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *itemArray;

@end

@implementation RVUICaseViewController

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
    // 添加tableView
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
//    [self addTableItemWithTitle:@"钱包" detailText:@"交易记录" destVcClass:[RVTradeInfoViewController class] data:@"TradeInfo"];
//    [self addTableItemWithTitle:@"钱包" detailText:@"零钱明细" destVcClass:[RVTradeInfoViewController class] data:@"PayFlow"];
//    [self addTableItemWithTitle:@"钱包" detailText:@"银行卡列表页" destVcClass:[RVBankCardViewController class] data:@"BankCardList"];
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
        
        if ([vc isKindOfClass:[RVBaseViewController class]]) {
            ((RVBaseViewController *)vc).sourceVC = self;
        }
        
        if ([vc respondsToSelector:@selector(setData:)]){
            [vc performSelector:@selector(setData:) withObject:item.data];
        }
        [self presentViewController:vc animated:YES completion:nil];
    }
}


@end
