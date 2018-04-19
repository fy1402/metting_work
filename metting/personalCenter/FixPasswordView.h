//
//  FixPasswordView.h
//  metting
//
//  Created by 丰雨 on 2018/4/19.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Config.h"

@interface FixPasswordView : UIView

@property (copy, nonatomic) voidBlock onClickCleanActionBlock;

@property (copy, nonatomic) arrayBlock onClickMakeSureActionBlock;

@end
