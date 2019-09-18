//
//  WGProtocolManager.h
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WGProtocolManager : NSObject

+ (void)registerProvide:(id)provide protocol:(Protocol *)protocol;
+ (id)provideForProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
