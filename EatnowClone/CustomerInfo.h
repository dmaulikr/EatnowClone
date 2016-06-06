//
//  CustomerInfo.h
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressClass.h"

@interface CustomerInfo : NSObject

@property NSString *customerName;
@property AddressClass *customerAddr;
@property NSString *contactNumber;
@property long int *customerID;
@property NSString *email;

@end
