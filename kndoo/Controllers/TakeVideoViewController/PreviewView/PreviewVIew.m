//
//  PreviewVIew.m
//  kndoo
//
//  Created by admin on 1/10/15.
//  Copyright (c) 2015 ___byabrik___. All rights reserved.
//

#import "PreviewVIew.h"
#import <AVFoundation/AVFoundation.h>

@implementation PreviewView

+ (Class)layerClass
{
    return [AVCaptureVideoPreviewLayer class];
}

- (AVCaptureSession *)session
{
    return [(AVCaptureVideoPreviewLayer *)[self layer] session];
}

- (void)setSession:(AVCaptureSession *)session
{
    [(AVCaptureVideoPreviewLayer *)[self layer] setSession:session];
}

@end