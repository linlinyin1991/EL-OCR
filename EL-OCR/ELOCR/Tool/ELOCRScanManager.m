//
//  ELOCRScanManager.m
//  EL-OCR
//
//  Created by yin linlin on 2018/5/15.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import "ELOCRScanManager.h"

@implementation ELOCRScanManager

- (void)receiveImageBuffer:(CVPixelBufferRef)imageBuffer {
    size_t width_t= CVPixelBufferGetWidth(imageBuffer);
    size_t height_t = CVPixelBufferGetHeight(imageBuffer);
    CVPlanarPixelBufferInfo_YCbCrBiPlanar *planar = CVPixelBufferGetBaseAddress(imageBuffer);
    size_t offset = NSSwapBigIntToHost(planar->componentInfoY.offset);
    
    unsigned char* baseAddress = (unsigned char *)CVPixelBufferGetBaseAddress(imageBuffer);
    unsigned char* pixelAddress = baseAddress + offset;
    
    size_t cbCrOffset = NSSwapBigIntToHost(planar->componentInfoCbCr.offset);
    uint8_t *cbCrBuffer = baseAddress + cbCrOffset;
}

@end
