//
//  ZomatoEndPoints.m
//  EatnowClone
//
//  Created by Varun on 13/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ZomatoAPI.h"

@implementation ZomatoAPI

@synthesize locationEndPoints;
@synthesize qStr;
@synthesize sessionWithHeader;


+(id)initWithHeaders {
    ZomatoAPI *service = [[ZomatoAPI alloc] init];
    service.sessionWithHeader = [self getZomatoAPIHeaders];
    return service;
}

+(id)initWithSearchQuery:(NSString *)q {
    ZomatoAPI *serviceAPI= [self initWithHeaders];
    serviceAPI.qStr = [ NSString stringWithFormat:@"https://developers.zomato.com/api/v2.1/locations?query=%@",[serviceAPI encodeSearchText:q]];
    return serviceAPI;
}

+(id)LoadSearchWithEntityID:(NSString *) entity_id andEntityType:(NSString *)entity_type {
    ZomatoAPI *serviceAPI= [self initWithHeaders];

    serviceAPI.qStr = [NSString stringWithFormat:@"https://developers.zomato.com/api/v2.1/search?entity_id=%@&entity_type=%@",entity_id,[serviceAPI encodeSearchText:entity_type]];
    return serviceAPI;
}

+(NSURLSession *) getZomatoAPIHeaders {
    NSURLSessionConfiguration *sessionCofiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionCofiguration.HTTPAdditionalHeaders = @{
                                                  @"Accept" :@"application/json",
                                                  @"user-key" : @"b74716a2c75ff15f490d67306f05e6ce"
                                                  };
    
     return [NSURLSession sessionWithConfiguration:sessionCofiguration];
}

-(NSString *)encodeSearchText:(NSString *) text {
    return [text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
}

@end
