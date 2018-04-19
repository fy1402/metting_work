//
//  FixPasswordView.m
//  metting
//
//  Created by 丰雨 on 2018/4/19.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "FixPasswordView.h"

@interface FixPasswordView()

@property (weak, nonatomic) IBOutlet UIView *bgView;

@property (weak, nonatomic) IBOutlet UITextField *oldPassword;

@property (weak, nonatomic) IBOutlet UITextField *password;
@end

@implementation FixPasswordView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}
- (IBAction)cleanAction:(id)sender {
    
    if (self.onClickCleanActionBlock) {
        self.onClickCleanActionBlock();
    }
}


- (IBAction)makeSureAction:(id)sender {
    
    NSString *old = self.oldPassword.text;
    NSString *new = self.password.text;
    
    if (old == nil) {
        old = @"";
    }
    if (new == nil) {
        new = @"";
    }
    
    NSArray *passwords = @[old, new];
    
    if (self.onClickMakeSureActionBlock) {
        self.onClickMakeSureActionBlock(passwords);
    }
}

@end
