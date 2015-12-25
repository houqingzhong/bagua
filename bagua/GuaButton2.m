//
//  GuaButton2.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "GuaButton2.h"
#import "GuaButton.h"
#import "Constant.h"
#import "UIView+Facade.h"

@interface GuaButton2()
{
    UIImageView *_gua1;
    UIImageView *_gua2;
    
    UILabel *_titleLabel;
}
@end

@implementation GuaButton2

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _titleLabel = [UILabel new];
        _gua1 = [UIImageView new];
        _gua2 = [UIImageView new];
        
        [self addSubview:_gua2];
        [self addSubview:_gua2];
        [self addSubview:_titleLabel];
    }
    
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [_gua1 anchorTopCenterFillingWidthWithLeftAndRightPadding:0 topPadding:0 height:ScreenSize.width/5];
    [_gua2 alignUnder:_gua1 centeredFillingWidthWithLeftAndRightPadding:0 topPadding:10*XA height:ScreenSize.width/5];
    
    [_titleLabel anchorBottomCenterFillingWidthWithLeftAndRightPadding:0 bottomPadding:0 height:20*XA];
    
}

- (void)setData:(NSDictionary*)data
{
  
    [self setNeedsLayout];
}


- (void)setUp:(UIImage *)upImage
{
    if (upImage) {
        _gua1.image = upImage;
    }
}

- (void)setDown:(UIImage *)downImage
{
    if (downImage) {
        _gua2.image = downImage;
    }
}
@end
