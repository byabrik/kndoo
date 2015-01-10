//
//  TakeVideoViewController.m
//  kndoo
//
//  Created by admin on 1/2/15.
//  Copyright (c) 2015 ___byabrik___. All rights reserved.
//

#import "TakeVideoViewController.h"
#import "Utils.h"
#import "Constants.h"
#import <AVFoundation/AVFoundation.h>
#import "PreviewView.h"


static void * CapturingStillImageContext = &CapturingStillImageContext;
static void * RecordingContext = &RecordingContext;
static void * SessionRunningAndDeviceAuthorizedContext = &SessionRunningAndDeviceAuthorizedContext;

@interface TakeVideoViewController () <AVCaptureFileOutputRecordingDelegate>

// For use in the storyboards.
@property (nonatomic, weak) IBOutlet PreviewView *previewView;
@property (nonatomic, weak) IBOutlet UIButton *recordButton;
@property (nonatomic, weak) IBOutlet UIButton *cameraButton;

- (IBAction)toggleMovieRecording:(id)sender;
- (IBAction)changeCamera:(id)sender;
- (IBAction)focusAndExposeTap:(UIGestureRecognizer *)gestureRecognizer;

// Session management.
@property (nonatomic) dispatch_queue_t sessionQueue; // Communicate with the session and other session objects on this queue.
@property (nonatomic) AVCaptureSession *session;
@property (nonatomic) AVCaptureDeviceInput *videoDeviceInput;
@property (nonatomic) AVCaptureMovieFileOutput *movieFileOutput;

// Utilities.
@property (nonatomic) UIBackgroundTaskIdentifier backgroundRecordingID;
@property (nonatomic, getter = isDeviceAuthorized) BOOL deviceAuthorized;
@property (nonatomic, readonly, getter = isSessionRunningAndDeviceAuthorized) BOOL sessionRunningAndDeviceAuthorized;
@property (nonatomic) BOOL lockInterfaceRotation;
@property (nonatomic) id runtimeErrorHandlingObserver;

@end

@implementation TakeVideoViewController

@synthesize navigationView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.hidesBottomBarWhenPushed = YES;
        
        UIImage* image = [Utils imageWithImage:[UIImage imageNamed:@"videocam_icon.png"] scaledToSize:CGSizeMake(35, 20)];
        self.tabBarItem.selectedImage = image;
        self.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);        
    }
    return self;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self doInitialSetup];
}

- (void) doInitialSetup {
    
    // Create the AVCaptureSession
    AVCaptureSession *session = [[AVCaptureSession alloc] init];
    [self setSession:session];

    
//    UIView* progressView = [[UIView alloc] init];
//    progressView.backgroundColor = [UIColor whiteColor];
//    
//    progressView.frame= CGRectMake(0,0,0,44);
//    [navigationView insertSubview:progressView atIndex:0];
//    
//    CGRect frame = progressView.frame;
//    frame.size.width = 100;
//    [UIView animateWithDuration:5
//                     animations:^{
//                         progressView.frame= frame;
//                     }];
}

- (IBAction)toggleRecordButton:(id)sender {
    
    if(!self.isRecording) {
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    //self.navigationController.navigationBarHidden = YES;
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
