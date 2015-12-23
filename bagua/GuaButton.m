//
//  GuaButton.m
//  bagua
//
//  Created by 调伏自己 on 15/12/23.
//  Copyright © 2015年 调伏自己. All rights reserved.
//

#import "GuaButton.h"

@interface GuaButton()
@property (nonatomic, strong) NSDictionary *gua;
@end

@implementation GuaButton

- (void)setData:(NSDictionary *)gua
{
    self.gua = gua;
    if (gua[@"icon"]) {
        [self setImage:[UIImage imageNamed:gua[@"icon"]] forState:UIControlStateNormal];
    }
}

@end
