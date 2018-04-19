//
//  PersonalCenterController.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "PersonalCenterController.h"
#import "FixPasswordView.h"
#import "Masonry.h"
#import "UIView+Create.h"
#import "AdminModel.h"

@interface PersonalCenterController ()
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (nonatomic, strong) UIView *fixView;
@end

@implementation PersonalCenterController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI {
    self.bgView.layer.cornerRadius = 10.0f;
    self.bgView.layer.masksToBounds = YES;
}

- (IBAction)changeHeaderImageVAction:(UIButton *)sender {
    
}

- (IBAction)changePassword:(id)sender {
    FixPasswordView *view = [FixPasswordView loadFromNib];
    [self.view addSubview:view];
    self.fixView = view;
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(0);
    }];

    WEAKSELF
    view.onClickMakeSureActionBlock = ^(NSArray *results) {
        NSString *old = results.firstObject;
        NSString *new = results.lastObject;
        if (![old isEqualToString:@""] && ![old isEqualToString:@""]) {
            NSString *old_password = [AdminModel getPassword];
            if ([old_password isEqualToString:old]) {
                [AdminModel setPassword:new];
                [weakSelf.fixView removeFromSuperview];
            } else {
                DLog(@"原始密码不匹配");
            }
        } else {
            DLog(@"密码为nil");
        }
    };
    
    view.onClickCleanActionBlock = ^{
        [weakSelf.fixView removeFromSuperview];
    };
}

- (IBAction)lagout:(id)sender {
    
}

- (IBAction)closeAction:(id)sender {
    
}

@end
