//
//  ELScanBankCardController.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/16.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanBankCardController.h"
#import "ELOCRScanManager.h"

@interface ELScanBankCardController ()
@property (nonatomic, strong) ELOCRScanManager *cameraManager;
@end

@implementation ELScanBankCardController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"银行卡扫描";
    // Do any additional setup after loading the view.
}

- (ELOCRScanManager *)cameraManager {
    if (!_cameraManager) {
        _cameraManager = [[ELOCRScanManager alloc] init];
        _cameraManager.scanType = OCRScan_BankCard;
    }
    return _cameraManager;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
