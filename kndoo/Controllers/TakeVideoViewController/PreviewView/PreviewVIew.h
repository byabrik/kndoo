//
//  PreviewVIew.h
//  kndoo
//
//  Created by admin on 1/10/15.
//  Copyright (c) 2015 ___byabrik___. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AVCaptureSession;

@interface PreviewView : UIView

@property (nonatomic) AVCaptureSession *session;

@end
