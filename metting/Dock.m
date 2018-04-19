//
//  Dock.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "Dock.h"
#import "DockItem.h"
#import "TabItem.h"
#import "Config.h"
#import "Masonry.h"

@implementation Dock

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        [self setupUI];
        
        //自动伸缩高度可伸缩，右边距可以伸缩
        self.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleRightMargin;
        //设置背景图片
        self.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Toolbar_bg_tabbar.png"]];
        [self addTabItems];
        
    }
    return self;
}

- (void)setupUI {
    self.backgroundColor = [UIColor clearColor];
    
    UIView *bgView = [[UIView alloc] init];
    bgView.backgroundColor = [UIColor grayColor];
    [self addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.top.mas_offset(0);
        make.right.mas_offset(-16);
    }];
}

//添加Tab选项卡
- (void)addTabItems
{
    //首页
    [self addSingleTab:@"u18" selectedImage:@"u18" weight:1];
    
    //团购
    [self addSingleTab:@"u18" selectedImage:@"u18" weight:2];
    
    //排行榜
    [self addSingleTab:@"u18" selectedImage:@"u18" weight:3];
    
    // 个人中心
    [self addSingleTab:@"u18" selectedImage:@"u18" weight:4];
    
}

- (void)addSingleTab:(NSString *)backgroundImage selectedImage:(NSString *)selectedImage weight:(int)weight
{
    TabItem *tabItem=[[TabItem alloc]init];
    [tabItem setBackgroundImage:backgroundImage];
    [tabItem setSelectedImage:selectedImage];
    
    tabItem.backgroundColor = [UIColor randomColor];
    
    //设置位置
    tabItem.frame = CGRectMake(0,  self.frame.size.height / 4 * (weight - 1), DockItemWidth, self.frame.size.height / 4);
    
    //设置选中触摸选中事件
    [tabItem addTarget:self action:@selector(tabItemTouchEvent:) forControlEvents:UIControlEventTouchDown];
    tabItem.tag = weight;
    [self addSubview:tabItem];
    
}

//设置触摸事件
- (void)tabItemTouchEvent:(TabItem *)tabItem
{
    
    if ([self.dockDelegate respondsToSelector:@selector(switchMainByTabItem:originalTab:destinationTab:)]) {
        [self.dockDelegate switchMainByTabItem:self originalTab:(int)selectedTabItem.tag destinationTab:(int)tabItem.tag];
    }
    selectedTabItem.enabled=YES;
    tabItem.enabled = NO;
    //将当前选中的赋值
    selectedTabItem =tabItem;
}

@end
