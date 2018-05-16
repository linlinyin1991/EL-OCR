//
//  ELOCRScanManager.h
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanBaseManager.h"
typedef NS_ENUM(NSUInteger, OCRScanType) {
    OCRScan_BankCard,//银行卡
    OCRScan_IDCard,//身份证
};

@interface ELOCRScanManager : ELScanBaseManager

@property (nonatomic, assign) OCRScanType scanType;

@end
