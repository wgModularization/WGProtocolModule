//
//  WGProtocolManager.m
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import "WGProtocolManager.h"

@interface WGProtocolManager()

@property (nonatomic, strong) NSMutableDictionary *provideDic;

@end

@implementation WGProtocolManager

#pragma mark -单例
static WGProtocolManager *instance = nil;
+ (WGProtocolManager *)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[WGProtocolManager alloc] init];
    });
    return instance;
}


- (instancetype)init {
    self = [super init];
    if (self) {
        self.provideDic = [[NSMutableDictionary alloc] init];
    }
    return self;
}


+ (void)registerProvide:(id)provide protocol:(Protocol *)protocol {
    
    if (!provide || !protocol) {
        return;
    }
    
    [[self shareInstance].provideDic setObject:provide forKey:NSStringFromProtocol(protocol)];
}



+ (id)provideForProtocol:(Protocol *)protocol {
    
    id object = [[self shareInstance].provideDic objectForKey:NSStringFromProtocol(protocol)];
    
    return object;
}

@end
