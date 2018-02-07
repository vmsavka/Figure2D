//
//  NGCameraViewController.h
//  NymgoCardDetector
//
//  Created by Vasyl Savka on 2/3/17.
//  Copyright © 2017 Vasyl.Savka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2.framework/Headers/videoio/cap_ios.h>

using namespace cv;

@interface NGCameraViewController : UIViewController<CvVideoCameraDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *captureImageView;
@property (strong, nonatomic) IBOutlet UIButton *captureButton;

@end
