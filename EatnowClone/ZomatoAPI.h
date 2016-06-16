//
//  ZomatoEndPoints.h
//  EatnowClone
//
//  Created by Varun on 13/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface ZomatoAPI : NSObject

@property NSString *locationEndPoints;
@property NSString *qStr;
@property NSURLSession *sessionWithHeader;

+(id)initWithHeaders;
+(id)initWithSearchQuery : (NSString *) q;
+(id)LoadSearchWithEntityID:(NSString *) entity_id andEntityType:(NSString *)entity_type;
-(NSString *)encodeSearchText:(NSString *) text;
@end
