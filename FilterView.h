//
//  CustomeViews.h
//  EatnowClone
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterView : UIView

@property NSLayoutConstraint* xViewConstraint;
-(void)showFilter:(CGFloat) screenWidth;
-(void)HideFilter;

@end
