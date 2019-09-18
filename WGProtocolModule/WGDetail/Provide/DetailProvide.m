//
//  DetailProvide.m
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import "DetailProvide.h"
#import "WGDetailProtocol.h"
#import "WGProtocolManager.h"

#import "DetailViewController.h"

@interface DetailProvide() <WGDetailProtocol>

@end

@implementation DetailProvide

+ (void)load {
    
    [WGProtocolManager registerProvide:[[self alloc] init] protocol:@protocol(WGDetailProtocol)];
}

- (UIViewController *)detailViewController:(NSString *)name {
    
    DetailViewController *vc = [[DetailViewController alloc] initWithName:name];
    
    return vc;
}

@end
