//
//  ELScanBaseManager.h
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
#import "exbankcard.h"
#import "excards.h"

typedef NS_ENUM(NSUInteger, ELScanType) {
    ScanType_BankCard,//银行卡
    ScanType_IDCard,//身份证
    ScanType_QRCode,//二维码
    ScanType_BarCode,//条形码
};

@interface ELScanBaseManager : NSObject<AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate,AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic, strong) AVCaptureSession *captureSession;
//输出流
@property (nonatomic, strong) AVCaptureVideoDataOutput *videoDataOutput;
//输入流
@property (nonatomic, strong) AVCaptureDeviceInput *activeVideoInput;

@end
