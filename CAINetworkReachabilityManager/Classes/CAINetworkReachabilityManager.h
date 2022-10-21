//
//  CAINetworkReachabilityManager.h
//  MerchantDriver
//
//  Created by simon on 2022/9/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkReachabilityManager : NSObject


/// 检查是否有网络,这是个异步操作
/// - Parameter reachBlock: reachBlock description
+ (void)checkNetworkReachability:(void(^)(BOOL isReachable))reachBlock;


@end

NS_ASSUME_NONNULL_END
