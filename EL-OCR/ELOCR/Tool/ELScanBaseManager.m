//
//  ELScanBaseManager.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanBaseManager.h"
@interface ELScanBaseManager ()

@end

@implementation ELScanBaseManager

- (id)init {
    if (self = [super init]) {
        [self configSession];
    }
    return self;
}



- (BOOL)configSession {
    dispatch_queue_t captureQueue = dispatch_queue_create("VideoDataOutputQueue", DISPATCH_QUEUE_SERIAL);
    if (![self configInputWithQueue:captureQueue] || ![self configOutputWithQueue:captureQueue]) {
        return NO;
    }
    return YES;
}

- (BOOL)configInputWithQueue:(dispatch_queue_t)queue {
    if (self.videoDataInput) {
        if ([self.captureSession canAddInput:self.videoDataInput]) {
            [self.captureSession addInput:self.videoDataInput];
            return YES;
        }
    }
    return NO;
}

- (BOOL)configOutputWithQueue:(dispatch_queue_t)queue {
    [self.videoDataOutput setSampleBufferDelegate:self queue:queue];
    if ([self.captureSession canAddOutput:self.videoDataOutput]) {
        [self.captureSession addOutput:self.videoDataOutput];
        AVCaptureConnection *videoConnection = [self.videoDataOutput connectionWithMediaType:AVMediaTypeVideo];
        videoConnection.preferredVideoStabilizationMode = AVCaptureVideoStabilizationModeAuto;
    } else {
        return NO;
    }
    return YES;
}


- (void)startSession {
    [self.captureSession startRunning];
//    if (![self.captureSession isRunning]) {
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//            [self.captureSession startRunning];
//        });
//    }
}

- (void)stopSession {
    if ([self.captureSession isRunning]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self.captureSession stopRunning];
        });
    }
}


- (void)receiveImageBuffer:(CVPixelBufferRef)imageBuffer {
    
}

#pragma mark - AVCaptureVideoDataOutputSampleBufferDelegate

- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection {
    CVPixelBufferRef imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer);
    [self receiveImageBuffer:imageBuffer];
//    if ([captureOutput isEqual:self.videoDataOutput]) {
//        if(self.isInProcessing == NO) {
//            [self.receiveSubject sendNext:(__bridge id)(imageBuffer)];
//        }
//    }
}




@end
