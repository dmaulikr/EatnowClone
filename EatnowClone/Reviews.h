//
//  Reviews.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantDetails.h"
#import "CustomerInfo.h"
@interface Reviews : NSObject

@property NSInteger *reviewID;
@property NSString *reviewMsg;
@property NSDate *onDate;

@end
