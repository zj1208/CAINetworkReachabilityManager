//
//  CHSViewController.m
//  NetworkReachabilityManager
//
//  Created by 海参 on 10/19/2022.
//  Copyright (c) 2022 海参. All rights reserved.
//

#import "CHSViewController.h"
#import <CAINetworkReachabilityManager/CAINetworkReachabilityManager.h>

@interface CHSViewController ()

@end

@implementation CHSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [CAINetworkReachabilityManager checkNetworkReachability:^(BOOL isReachable) {
        if(isReachable){
            
        }else{
            
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
