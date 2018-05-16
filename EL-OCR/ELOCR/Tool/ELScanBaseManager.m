//
//  ELScanBaseManager.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanBaseManager.h"

@implementation ELScanBaseManager

#pragma mark - AVCaptureVideoDataOutputSampleBufferDelegate

- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection {
    CVPixelBufferRef imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer);
//    if ([captureOutput isEqual:self.videoDataOutput]) {
//        if(self.isInProcessing == NO) {
//            [self.receiveSubject sendNext:(__bridge id)(imageBuffer)];
//        }
//    }
}


@end
