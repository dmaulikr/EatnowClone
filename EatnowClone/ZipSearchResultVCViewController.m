//
//  ZipSearchResultVCViewController.m
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ZipSearchResultVCViewController.h"
#import "RestraurantSearchResultCell.h"

@interface ZipSearchResultVCViewController ()
{
    BOOL isFilterOpen;
}
@end

@implementation ZipSearchResultVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    filterView.xViewConstraint = xConstraintForFilter;
    isFilterOpen = NO;
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

-(void)openFilter:(UIBarButtonItem *)sender
{
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGFloat width = screenBound.size.width;
    if (isFilterOpen) {
        [filterView HideFilter];
    }
    else
    {
        [filterView showFilter:width];
    }
}

//- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
//{
//    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context)
//     {
//         UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
//         // do whatever
//     } completion:^(id<UIViewControllerTransitionCoordinatorContext> context)
//     {
//         
//     }];
//    
//    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
//}


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
