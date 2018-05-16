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
#import "ELScanInitialize.h"


@interface ELScanBaseManager : ELScanInitialize<AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate,AVCaptureMetadataOutputObjectsDelegate>

- (void)receiveImageBuffer:(CVPixelBufferRef)imageBuffer;
- (void)startSession;
- (void)stopSession;

@end
