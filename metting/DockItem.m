//
//  DockItem.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "DockItem.h"
#import "Config.h"

@implementation DockItem

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        // Item分割线
        UIImageView *splitLine = [[UIImageView  alloc] init];
        splitLine.frame = CGRectMake(0, 0, HEIGHT / 4, DockItemHeight);
        splitLine.image = [UIImage imageNamed:@"separator_tabbar_item.png"];
        [self addSubview:splitLine];
    }
    return self;
    
}
//设置背景图片
-(void)setBackgroundImage:(NSString *)backgroundImage{
    
    _backgroundImage=backgroundImage;
    [self setImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
    
}
//设置选中图片
-(void)setSelectedImage:(NSString *)selectedImage{
    _selectedImage=selectedImage;
    [self setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateDisabled];
    
}

-(void)setFrame:(CGRect)frame{
    //固定Item宽高
    frame.size=CGSizeMake(DockItemWidth, HEIGHT / 4);
    [super setFrame:frame];
}


@end
