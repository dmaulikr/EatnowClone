//
//  RestaurantDetails.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurent.h"

@interface RestaurantDetails : Restaurent

@property BOOL doDelivery;
@property BOOL doPickup;
@property NSDictionary *workingDaysWithTiming;
@property NSInteger *minDeliveryCharges;
@property NSInteger *hasFreeOrderAbove;
@property NSInteger *menuID;
@property NSInteger *firstTimeDiscount;


@end
