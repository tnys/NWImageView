//
//  ViewController.m
//  PictureFrame
//
//  Created by Tom Nys on 13/12/12.
//  Copyright (c) 2012 Tom Nys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.imageView.image = [UIImage imageNamed:@"200.jpeg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)borderChanged:(UISegmentedControl*)sender {
	self.imageView.bordermode = sender.selectedSegmentIndex;
}
@end
