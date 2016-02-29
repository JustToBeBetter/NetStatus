//
//  ChechNetStatus.h
//  NetStatus-Test
//
//  Created by 成璐飞 on 16/2/25.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

@interface ChechNetStatus : NSObject

/**
 *  获取设备是否联网，网络状态
 *
 *  @return 0:无网络
            1:wifi
            2:数据网络
 */
+ (NSInteger)checkDreviceNetStatus;

@end
