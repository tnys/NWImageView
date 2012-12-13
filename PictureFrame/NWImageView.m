//
//  NWImageView.m
//  PictureFrame
//
//  Created by Tom Nys on 13/12/12.
//  Copyright (c) 2012 Tom Nys. All rights reserved.
//

#import "NWImageView.h"
#import <QuartzCore/QuartzCore.h>

@implementation NWImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setBordermode:(enum BorderMode)bordermode
{
	_bordermode = bordermode;
	
	if (bordermode == bordermodeNone)
	{
		self.layer.borderColor = nil;
		self.layer.borderWidth = 0.;
		self.layer.shadowColor = nil;
		self.layer.shadowPath = nil;
		self.layer.shadowOpacity = 0.f;
	}
	else if (bordermode == bordermodePaper)
	{
		self.layer.borderColor = [UIColor whiteColor].CGColor;
		self.layer.borderWidth = 10.;

		CGSize size = self.bounds.size;
		CGFloat curlFactor = 15.0f;
		CGFloat shadowDepth = 5.0f;

		self.layer.shadowColor = [UIColor blackColor].CGColor;
		self.layer.shadowOpacity = 1.f;
		self.layer.shadowOffset = CGSizeMake(.0f, 5.0f);
		self.layer.shadowRadius = 5.0f;
		self.layer.masksToBounds = NO;

		UIBezierPath *path = [UIBezierPath bezierPath];
		[path moveToPoint:CGPointMake(0.0f, 0.0f)];
		[path addLineToPoint:CGPointMake(size.width, 0.0f)];
		[path addLineToPoint:CGPointMake(size.width, size.height + shadowDepth)];
		[path addCurveToPoint:CGPointMake(0.0f, size.height + shadowDepth)
				controlPoint1:CGPointMake(size.width - curlFactor, size.height + shadowDepth - curlFactor)
				controlPoint2:CGPointMake(curlFactor, size.height + shadowDepth - curlFactor)];
		self.layer.shadowPath = path.CGPath;
		
	}
	else if (bordermode == bordermodeWhite)
	{
		self.layer.borderColor = [UIColor whiteColor].CGColor;
		self.layer.borderWidth = 10.;
		self.layer.shadowColor = nil;
		self.layer.shadowPath = nil;
		self.layer.shadowOpacity = 0.f;
	}
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
