//
//  WGDetailProtocol.h
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WGDetailProtocol <NSObject>

@required
- (UIViewController *)detailViewController:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
