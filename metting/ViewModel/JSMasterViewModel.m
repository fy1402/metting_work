//
//  JSMasterViewModel.m
//  QZone
//
//  Created by ShenYj on 16/8/4.
//  Copyright © 2016年 ___ShenYJ___. All rights reserved.
//

#import "JSMasterViewModel.h"

// 因为加了readOnly修饰,同时重写了getter方法,不会自动生成带下划线的成员变量,所以需要人工合成
@implementation JSMasterViewModel{
    
    NSArray <JSMasterItem *> *_menumItems;
    
    // 第一种方式
    // NSArray <JSComposeItem *> *_composeItems;
    
}
// 第二种方式
//@synthesize composeItems = _composeItems;
//@synthesize menumItems = _menumItems;


- (NSArray<JSMasterItem *> *)menumItems{
    
    if (_menumItems == nil) {
        
        NSArray *data = @[
                          @{ @"title":@"admin0", @"imageName":@"u18", @"controllerClassName":@"PersonalCenterController"},
                          @{ @"title":@"admin1", @"imageName":@"u18", @"controllerClassName":@"WaitingWorkController"},
                          @{ @"title":@"admin2", @"imageName":@"u18", @"controllerClassName":@"WorkingController"},
                          @{ @"title":@"admin3", @"imageName":@"u18", @"controllerClassName":@"MessageViewController"},
//                          @{ @"title":@"好友", @"imageName":@"tab_bar_friend_icon", @"controllerClassName":@"JSMyFriendTableViewController", @"segmetnItem":@[@"我的好友",@"特别关注"]},
//                          @{ @"title":@"更多", @"imageName":@"tab_bar_e_more_icon", @"controllerClassName":@"JSMoreAppTableViewController"},
//                          @{ @"title":@"说说", @"imageName":@"tabbar_mood", @"composeArea":@YES, @"controllerClassName":@"JSComposeViewController" },
//                          @{ @"title":@"照片", @"imageName":@"tabbar_photo", @"composeArea":@YES, @"controllerClassName":@"JSComposeViewController" },
//                          @{ @"title":@"日志", @"imageName":@"tabbar_blog", @"composeArea":@YES, @"controllerClassName":@"JSComposeViewController"  }
                          ];
        
        NSMutableArray *mArr = [NSMutableArray array];
        
        // 字典转模型
        for (NSDictionary *dict in data) {
            
            JSMasterItem *item = [JSMasterItem itemWithDict:dict];
            [mArr addObject:item];
        }
        
        _menumItems = mArr.copy;
    }
    
    return _menumItems;
}






//- (NSArray<JSComposeItem *> *)composeItems{
//
//    if (_composeItems == nil) {
//
//        NSArray *data = @[
//                          @{ @"title":@"说说", @"imageName":@"", @"composeArea":@YES },
//                          @{ @"title":@"照片", @"imageName":@"", @"composeArea":@YES },
//                          @{ @"title":@"日志", @"imageName":@"", @"composeArea":@YES }
//                          ];
//
//        NSMutableArray *mArr = [NSMutableArray array];
//
//        // 字典转模型
//        for (NSDictionary *dict in data) {
//
//            JSComposeItem *item = [JSComposeItem itemWithDict:dict];
//            [mArr addObject:item];
//        }
//
//        _composeItems = mArr.copy;
//    }
//
//    return _composeItems;
//}

@end
