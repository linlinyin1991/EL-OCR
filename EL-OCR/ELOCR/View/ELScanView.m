//
//  ELScanView.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/16.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELScanView.h"
#import "ELScanBaseManager.h"
@interface ELScanView ()
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *previewLayer;

@end
@implementation ELScanView

- (id)init {
    if (self = [super init]) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    self.previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:self.cameraManager.captureSession];
    self.previewLayer.frame = self.bounds;
    self.previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    [self.layer addSublayer:self.previewLayer];
    [self.cameraManager startSession];
}
- (void)setCropRect:(CGRect)cropRect {
    [self.cameraManager startSession];
}

- (ELScanBaseManager *)cameraManager {
    if (!_cameraManager) {
        _cameraManager = [[ELScanBaseManager alloc] init];
    }
    return _cameraManager;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
