//
//  Restaurent.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"
#import "Rating.h"

@interface Restaurnt : NSObject

@property NSString *ID;
@property NSString *name;
@property Location *location;
@property NSString *cuisines;
@property Rating *userRating;
@property BOOL hasOnlineDelivery;
@property BOOL isDeliveringNow;

@end
