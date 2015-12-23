//
//  PingBaGua.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "PingBaGua.h"
#import "UIView+Facade.h"
#import "GuaButton.h"
#import "Constant.h"

@interface PingBaGua()
@property (nonatomic, strong)  NSArray *bagatu;
@end

@implementation PingBaGua

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i< 8; i++) {
            GuaButton *btn = [GuaButton new];
            btn.tag = 1000+i;
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
    NSInteger count = self.bagatu.count;
    for (int i = 0; i< count; i++) {
        CGFloat top = 0;
        if (i/4 == 0) {
            top = 20;
        }
        else
        {
            top = (i/4+1)*margin_top+ i/4*height;
        }
        CGFloat left = (i%4+1)*margin_left + i%4*width;
        GuaButton *btn = [self viewWithTag:1000+i];
        [btn setData:self.bagatu[i]];
        NSLog(@"%f %f %f %@", left, top, height, self.bagatu[i][@"title"]);
        [btn anchorTopLeftWithLeftPadding:left topPadding:top width:width height:height];
    }
}

-(void)setData:(NSArray *)data
{
    self.bagatu = data;
    [self setNeedsLayout];
}

@end
