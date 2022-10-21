//
//  CAINetworkReachabilityManager.m
//  MerchantDriver
//
//  Created by simon on 2022/9/6.
//

#import "CAINetworkReachabilityManager.h"
#import <AFNetworking/AFNetworkReachabilityManager.h>

@implementation CAINetworkReachabilityManager


+ (void)checkNetworkReachability:(void(^)(BOOL isReachable))reachBlock{
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        [[AFNetworkReachabilityManager sharedManager] stopMonitoring];
           switch (status) {

               case AFNetworkReachabilityStatusNotReachable:{
                   reachBlock(NO);
                   break;
               }
               case AFNetworkReachabilityStatusReachableViaWiFi:
               case AFNetworkReachabilityStatusReachableViaWWAN:{
                   reachBlock(YES);
                   break;
               }
               default:break;
           }
       }];
}

@end
