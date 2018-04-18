//
//  Config.h
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#define DockItemWidth 100
#define DockItemHeight 80

#define HEIGHT [UIScreen mainScreen].bounds.size.height

#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]

#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
