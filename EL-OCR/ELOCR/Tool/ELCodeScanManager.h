//
//  ELCodeScanManager.h
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanBaseManager.h"
typedef NS_ENUM(NSUInteger, CodeScanType) {
    CodeScan_QRCode,//二维码
    CodeScan_BarCode,//条形码
};
@interface ELCodeScanManager : ELScanBaseManager

@end
