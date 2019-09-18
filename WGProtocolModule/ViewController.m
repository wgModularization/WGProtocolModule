//
//  ViewController.m
//  WGProtocolModule
//
//  Created by wanggang on 2019/9/18.
//  Copyright © 2019 wg. All rights reserved.
//

#import "ViewController.h"
#import "WGDetailProtocol.h"
#import "WGProtocolManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)btnClicked {
    
    id<WGDetailProtocol> provide = [WGProtocolManager provideForProtocol:@protocol(WGDetailProtocol)];
    
    UIViewController *vc = [provide detailViewController:@"标题"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
