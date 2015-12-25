//
//  PingBaGua.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "PingBaGua.h"
#import "Constant.h"
#import "UIView+Facade.h"
#import "GuaButton.h"
#import "GuaButton2.h"

@interface PingBaGua()
@property (nonatomic, strong)  NSArray *gua_arr;
@property (nonatomic, strong)  NSArray *gua_arr2;
@end

@implementation PingBaGua

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _gua_arr = @[
                    @{@"title":@"乾", @"icon":@"qian"},
                    @{@"title":@"兑", @"icon":@"dui"},
                    @{@"title":@"离", @"icon":@"li"},
                    @{@"title":@"震", @"icon":@"zhen"},
                    @{@"title":@"巽", @"icon":@"xun"},
                    @{@"title":@"坎", @"icon":@"kan"},
                    @{@"title":@"艮", @"icon":@"gen"},
                    @{@"title":@"坤", @"icon":@"kun"},
                    ];
        
        _gua_arr2 = @[
                     @{@"title":@"本卦"},
                     @{@"title":@"变卦"},
                     @{@"title":@"互卦"},
                     ];
        
        for (int i = 0; i< _gua_arr.count; i++) {
            GuaButton *btn = [GuaButton new];
            btn.tag = 1000+i;
            [btn setData:_gua_arr[i]];
            [self addSubview:btn];
        }
        

        for (int i = 0; i< _gua_arr2.count; i++) {
            GuaButton2 *btn = [GuaButton2 new];
            btn.tag = 2000+i;
            [btn setData:_gua_arr[i]];            
            [self addSubview:btn];
        }
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat margin_left = 30;
    CGFloat margin_top = 20;
    CGFloat width = (ScreenSize.width-5*margin_left)/4;
    CGFloat height = width;
    for (int i = 0; i< _gua_arr.count; i++) {
        CGFloat top = 0;
        top = i/4 == 0 ? 20 : 2*margin_top+ height;
        CGFloat left = (i%4+1)*margin_left + i%4*width;
        GuaButton *btn = [self viewWithTag:1000+i];
        NSLog(@"%f %f %f %@", left, top, height, _gua_arr[i][@"title"]);
        [btn anchorTopLeftWithLeftPadding:left topPadding:top width:width height:height];
    }
}

@end
