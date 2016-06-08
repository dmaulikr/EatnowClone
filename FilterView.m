//
//  CustomeViews.m
//  EatnowClone
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "FilterView.h"


@implementation FilterView
{
    CGFloat oldXConstraint;
}

@synthesize xViewConstraint;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


-(void)showFilter:(CGFloat) screenWidth {
    oldXConstraint = xViewConstraint.constant;
    xViewConstraint.constant = screenWidth - screenWidth/3;
}

-(void)HideFilter {
    xViewConstraint.constant = oldXConstraint;
    //Remove xConstraint for view
}

@end
