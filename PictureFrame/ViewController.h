//
//  ViewController.h
//  PictureFrame
//
//  Created by Tom Nys on 13/12/12.
//  Copyright (c) 2012 Tom Nys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NWImageView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet NWImageView *imageView;

- (IBAction)borderChanged:(id)sender;
@end
