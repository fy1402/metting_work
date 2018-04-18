//
//  Dock.h
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TabItem;

@class Dock;
@protocol DockItemDelegate <NSObject>

-(void)switchMainByTabItem:(Dock *)dock originalTab:(int)start destinationTab:(int)end;

@end
@interface Dock : UIView
{
    TabItem *selectedTabItem;
}
@property (nonatomic, weak) id<DockItemDelegate> dockDelegate;

@end
