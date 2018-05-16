//
//  ELScanInitialize.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/16.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanInitialize.h"

@implementation ELScanInitialize
@synthesize sessionPreset = _sessionPreset;

#pragma mark - lazy load
- (AVCaptureSession *)captureSession {
    if (!_captureSession) {
        _captureSession = [[AVCaptureSession alloc] init];
        _captureSession.sessionPreset = self.sessionPreset;
        [_captureSession beginConfiguration];
    }
    return _captureSession;
}

- (void)setSessionPreset:(NSString *)sessionPreset {
    _sessionPreset = sessionPreset;
    self.captureSession.sessionPreset = sessionPreset;
}

- (NSString *)sessionPreset {
    if (!_sessionPreset) {
        _sessionPreset = AVCaptureSessionPreset1280x720;
    }
    return _sessionPreset;
}

- (AVCaptureDevice *)activeCamera {
    return self.videoDataInput.device;
}

- (AVCaptureDeviceInput *)videoDataInput {
    if (!_videoDataInput) {
        AVCaptureDevice *videoDevice =
        [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        NSError *error;
        _videoDataInput = [AVCaptureDeviceInput deviceInputWithDevice:videoDevice error:&error];
    }
    return _videoDataInput;
}

//
//- (NSString *)sessionPreset {
//    if (!_sessionPreset) {
//        _sessionPreset = AVCaptureSessionPreset1280x720;
//    }
//    return _sessionPreset;
//}

- (AVCaptureVideoDataOutput *)videoDataOutput {
    if (!_videoDataOutput) {
        _videoDataOutput = [[AVCaptureVideoDataOutput alloc] init];
        _videoDataOutput.alwaysDiscardsLateVideoFrames = YES;
        _videoDataOutput.videoSettings = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange], (id)kCVPixelBufferPixelFormatTypeKey, nil];
    }
    return _videoDataOutput;
}


@end
