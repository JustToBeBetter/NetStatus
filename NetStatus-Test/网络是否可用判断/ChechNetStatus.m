//
//  ChechNetStatus.m
//  NetStatus-Test
//
//  Created by 成璐飞 on 16/2/25.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

#import "ChechNetStatus.h"

@implementation ChechNetStatus

+ (NSInteger)checkDreviceNetStatus {
    NSInteger state = 0;
    // 1.检测wifi状态
    Reachability *wifi = [Reachability reachabilityForLocalWiFi];
    
    // 2.检测手机是否能上网络(WIFI\3G\2.5G)
    Reachability *conn = [Reachability reachabilityForInternetConnection];
    
    // 3.判断网络状态
    if ([wifi currentReachabilityStatus] != NotReachable) { // 有wifi
        NSLog(@"有wifi");
        state = 1;
    } else if ([conn currentReachabilityStatus] != NotReachable) { // 没有使用wifi, 使用手机自带网络进行上网
        NSLog(@"使用手机自带网络进行上网");
        state = 2;
    } else { // 没有网络
        NSLog(@"没有网络");
        state = 0;
    }
    return state;
}

@end
