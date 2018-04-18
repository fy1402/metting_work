//
//  TabItem.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "TabItem.h"

@implementation TabItem

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        // 设置选中时背景图片
        [self setBackgroundImage:[UIImage imageNamed:@"bg_tabbar_item.png"] forState:UIControlStateDisabled];
    }
    return self;
}

@end
