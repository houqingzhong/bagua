//
//  ViewController.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "ViewController.h"
#import "PingBaGua.h"
#import "GuaButton2.h"

@interface ViewController ()
{
    PingBaGua *_pinBaGua;
    NSArray *_bagatu;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _bagatu = @[
                @{@"title":@"乾", @"icon":@"qian"},
                @{@"title":@"兑", @"icon":@"dui"},
                @{@"title":@"离", @"icon":@"li"},
                @{@"title":@"震", @"icon":@"zhen"},
                @{@"title":@"巽", @"icon":@"xun"},
                @{@"title":@"坎", @"icon":@"kan"},
                @{@"title":@"艮", @"icon":@"gen"},
                @{@"title":@"坤", @"icon":@"kun"},
                ];

    _pinBaGua = [[PingBaGua alloc] initWithFrame:self.view.bounds];
    [_pinBaGua setData:_bagatu];
    [self.view addSubview:_pinBaGua];
    
    
    
    
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
