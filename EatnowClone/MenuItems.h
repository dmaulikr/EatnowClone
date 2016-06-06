//
//  MenuItems.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantDetails.h"

@interface MenuItems : NSObject

@property NSString *cuisineType;//Chienese, Thai , Indian, Beverages etc.
@property NSString *cuisineSubType;//Starter ,Main Course, etc.
@property NSString *itemName;
@property NSInteger *itemPrice;


@end
