//
//  AdminModel.m
//  metting
//
//  Created by 丰雨 on 2018/4/19.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "AdminModel.h"

@implementation AdminModel

+ (BOOL)loginByName:(NSString *)name password:(NSString *)password {
    NSString *name_user = [[NSUserDefaults standardUserDefaults] objectForKey:@"ADMIN_NAME"];
    
    if ([name isEqualToString:name_user]) {
        NSString *password_user = [[NSUserDefaults standardUserDefaults] objectForKey:@"ADMIN_PASSWORD"];
        if ([password_user isEqualToString:password_user]) {
            return YES;
        }
    }
    return NO;
}

+ (NSString *)getPassword {
    NSString *password_user = [[NSUserDefaults standardUserDefaults] objectForKey:@"ADMIN_PASSWORD"];
    if (password_user == nil) {
        password_user = @"";
    }
    return password_user;
}

+ (void)setPassword:(NSString *)password {
    if (password == nil) {
        password = @"";
    }
    [[NSUserDefaults standardUserDefaults] setObject:password forKey:@"ADMIN_PASSWORD"];
}

@end
