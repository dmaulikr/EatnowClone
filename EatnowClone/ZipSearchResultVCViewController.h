//
//  ZipSearchResultVCViewController.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilterView.h"

@interface ZipSearchResultVCViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet NSLayoutConstraint *xConstraintForFilter;
    IBOutlet FilterView *filterView;
}

-(IBAction) openFilter :(UIBarButtonItem *)sender;

@end
