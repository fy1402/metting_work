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

//#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

// 头文件
#import "Masonry.h"
#import <UIKit/UIKit.h>
#import "UIImage+Color.h"
#import "UIColor+RandomColor.h"




// 宏
#define isiPhone ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone)
#define kbackgroundColor [UIColor colorWithWhite:34 / 255.0 alpha:1.0]
// 常量
static const CGFloat kMenumButtonPortraitHeight = 60;
static const CGFloat kMenumButtonLandScapeHeight = 90;

// NSLog调试
#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define NSLog(...)
#endif

#define WEAKSELF __weak __typeof(&*self)weakSelf = self;

#define SCREEN_WIDTH MIN([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height)
#define SCREEN_HEIGHT MAX([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height)


//Block
typedef void(^voidBlock)(void);
typedef void(^stringBlock)(NSString *result);
typedef void(^boolBlock)(BOOL boolen);
typedef void(^indexBlock)(NSInteger index);
typedef void(^errorBlock)(NSError *error);
typedef void(^numberBlock)(NSNumber *result);
typedef void(^arrayWithErrorBlock)(NSArray *results,NSError *error);
typedef void(^arrayBlock)(NSArray *results);
