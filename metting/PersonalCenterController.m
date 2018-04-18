//
//  PersonalCenterController.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "PersonalCenterController.h"

@interface PersonalCenterController ()
@property (weak, nonatomic) IBOutlet UIView *bgView;

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
    
}

- (IBAction)lagout:(id)sender {
    
}

@end
