//
//  ViewController.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ViewController.h"
#import "ELScanBankCardController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *myTableView;
@property (nonatomic, strong) NSMutableArray *titleArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"光学字符识别系统";
    
    [self.titleArray addObject:@"银行卡扫描"];
//    [self.titleArray addObject:@"身份证扫描"];
//    [self.titleArray addObject:@"银行卡扫描竖屏"];
//    [self.titleArray addObject:@"银行卡扫描横屏"];
    [self.view addSubview:self.myTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableReuse = @"cellTable";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableReuse];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableReuse];
    }
    cell.textLabel.text = self.titleArray[indexPath.row];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[ELScanBankCardController new] animated:YES];
            break;
        case 1:
//            [self.navigationController pushViewController:[XLIDScanViewController new] animated:YES];
            break;
        case 2:
//            [self.navigationController pushViewController:[BKJKBankScanViewController new] animated:YES];
            break;
        case 3:
//            [self.navigationController pushViewController:[BKJKBankScanHViewController new] animated:YES];
            break;
        default:
            break;
    }
}
- (UITableView *)myTableView {
    if (_myTableView == nil) {
        _myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _myTableView.dataSource = self;
        _myTableView.delegate = self;
    }
    return _myTableView;
}

- (NSMutableArray *)titleArray {
    if (!_titleArray) {
        _titleArray = [[NSMutableArray alloc] init];
    }
    return _titleArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
