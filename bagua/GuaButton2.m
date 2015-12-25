//
//  GuaButton2.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "GuaButton2.h"
#import "GuaButton2.h"

@interface GuaButton2()
{
    GuaButton2 *_btn1;
    GuaButton2 *_btn2;
}
@end

@implementation GuaButton2

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _btn1 = [GuaButton2 new];
        _btn2 = [GuaButton2 new];
        
        [self addSubview:_btn1];
        [self addSubview:_btn2];
    }
    
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
}

- (void)setData:(NSDictionary*)data
{

    [self setNeedsLayout];
}
@end
