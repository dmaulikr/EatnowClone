//
//  RestraurantSearchCellTableViewCell.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestraurantSearchResultCell : UITableViewCell
{
    IBOutlet UIImageView *restLogo;
    IBOutlet UILabel *restName;
    IBOutlet UILabel *restDetail;
}

-(IBAction) orderNowClicked :(UIButton *)sender;

@end
