//
//  Restaurent.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressClass.h"

@interface Restaurent : NSObject

@property long int restID;
@property NSString *restName;
@property AddressClass *restAddr;
@property NSString *ownerName;
@property NSString *contactnumber;

@end
