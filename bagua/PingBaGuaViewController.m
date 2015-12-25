//
//  PingBaGuaViewController.m
//  bagua
//
//  Created by 调伏自己 on 15/12/24.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "PingBaGuaViewController.h"
#import "UIView+Facade.h"
#import "PingBaGua.h"


@interface PingBaGuaViewController()
{
    PingBaGua *_pinBaGua;
}
@end

@implementation PingBaGuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    _pinBaGua = [[PingBaGua alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_pinBaGua];
    
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _pinBaGua.frame = CGRectMake(0, self.navigationBar.yMax, self.view.width, self.view.height - self.navigationBar.height);
    [_pinBaGua setNeedsLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
