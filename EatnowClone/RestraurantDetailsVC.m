//
//  RestraurantDetailsVC.m
//  EatnowClone
//
//  Created by Varun on 08/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "RestraurantDetailsVC.h"

@implementation RestraurantDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [scrollableContentView setContentSize:scrollableContentView.frame.size];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
