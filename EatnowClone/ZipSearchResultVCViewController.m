//
//  ZipSearchResultVCViewController.m
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ZipSearchResultVCViewController.h"
#import "RestraurantSearchResultCell.h"
#import "ZomatoAPI.h"

@interface ZipSearchResultVCViewController ()
{
    NSURLSessionDataTask *dataTask;
    NSString *entity_id;
    NSString *entity_type;
    
}
@end

@implementation ZipSearchResultVCViewController
@synthesize qString;

- (void)viewDidLoad {
    [super viewDidLoad];
    __block ZomatoAPI *service = [ZomatoAPI initWithSearchQuery:qString];
    
    NSURL *url = [NSURL URLWithString:service.qStr];

    dataTask = [service.sessionWithHeader dataTaskWithRequest:[[NSURLRequest alloc] initWithURL:url] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        if ([jsonData isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dicData = jsonData;
            id localSuggetions = [dicData objectForKey:@"location_suggestions"];
            if ([localSuggetions isKindOfClass:[NSArray class]]) {
                NSDictionary *localSuggestionValues = [localSuggetions objectAtIndex:0];
                service = [ZomatoAPI LoadSearchWithEntityID:[localSuggestionValues objectForKey:@"entity_id"] andEntityType:[localSuggestionValues objectForKey:@"entity_type"]];
                
            }
            else {
                NSLog(@"Current object is not dictionary is is kind of %@",[localSuggetions class]);
            }
        }
        else {
            NSLog(@"Response is not in dictionary format");
        }
    }];
    [dataTask resume];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RestraurantSearchResultCell *cell = [tableView dequeueReusableCellWithIdentifier:@"searchResultPrototype" forIndexPath:indexPath];
    if (!cell) {
        cell = [[RestraurantSearchResultCell alloc] init];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
