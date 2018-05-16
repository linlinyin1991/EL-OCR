//
//  ELScanView.h
//  EL-OCR
//
//  Created by yin linlin on 2018/5/16.
//  Copyright © 2018年 yin linlin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ELScanBaseManager;

@interface ELScanView : UIView

//有效的扫描区域
@property (nonatomic, assign) CGRect cropRect;

@property (nonatomic, strong) ELScanBaseManager *cameraManager;

@end
