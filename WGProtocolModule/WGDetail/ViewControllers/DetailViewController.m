//
//  DetailViewController.m
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (instancetype)initWithName:(NSString *)name {
    
    self = [super init];
    if (self) {
        self.title = name;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.yellowColor;
    
}




@end
