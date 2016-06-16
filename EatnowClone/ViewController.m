//
//  ViewController.m
//  EatnowClone
//
//  Created by Varun on 06/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"
#import "ZomatoAPI.h"
#import "ZipSearchResultVCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)searchZipCode :(UIButton *)sender{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"pushSearchResult"])
    {
        ZipSearchResultVCViewController *vc = [segue destinationViewController];
        if (![zipCodeTxt.text isEqual:@""]) {
            vc.qString = zipCodeTxt.text;
        }
        else
        {
            NSLog(@"Enter String");
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
