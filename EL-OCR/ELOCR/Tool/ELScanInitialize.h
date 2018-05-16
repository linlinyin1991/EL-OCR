//
//  ELScanInitialize.h
//  EL-OCR
//
//  Created by yin linlin on 2018/5/16.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

@interface ELScanInitialize : NSObject

@property (nonatomic, strong) AVCaptureSession *captureSession;

@property (nonatomic, readonly) AVCaptureDevice *captureDevice;
//输入流
@property (nonatomic, strong) AVCaptureDeviceInput *videoDataInput;
//输出流
@property (nonatomic, strong) AVCaptureVideoDataOutput *videoDataOutput;

@property (nonatomic, copy) NSString *sessionPreset; // 图片质量

@end
