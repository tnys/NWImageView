//
//  NWImageView.h
//  PictureFrame
//
//  Created by Tom Nys on 13/12/12.
//  Copyright (c) 2012 Tom Nys. All rights reserved.
//

#import <UIKit/UIKit.h>

enum BorderMode {
	bordermodeNone = 0,
	bordermodePaper = 1,
	bordermodeWhite = 2
};

@interface NWImageView : UIImageView

@property (nonatomic) enum BorderMode bordermode;

@end
