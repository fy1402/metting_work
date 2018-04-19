//
//  AdminModel.h
//  metting
//
//  Created by 丰雨 on 2018/4/19.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdminModel : NSObject

+ (void)setPassword:(NSString *)password;

+ (NSString *)getPassword;

+ (BOOL)loginByName:(NSString *)name password:(NSString *)password;


@end
