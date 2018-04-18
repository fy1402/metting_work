//
//  MainController.m
//  metting
//
//  Created by 丰雨 on 2018/4/18.
//  Copyright © 2018年 Feng. All rights reserved.
//

#import "MainController.h"
#import "Dock.h"
#import "Config.h"
#import "PersonalCenterController.h"
#import "WorkingController.h"
#import "WaitingWorkController.h"
#import "MessageViewController.h"
#import "Masonry.h"

@interface MainController ()<DockItemDelegate>
@property (nonatomic, strong) UIView *bgView;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor greenColor];
    
    //加入侧边栏Dock
    Dock *dock=[[Dock alloc]initWithFrame:CGRectMake(0, 0, 150, self.view.frame.size.height)];
    dock.dockDelegate=self;
    [self.view addSubview:dock];
    
//    self.bgView = [[UIView alloc] initWithFrame:CGRectMake(0, DockItemWidth + 16, self.view.frame.size.width - DockItemWidth - 16, self.view.frame.size.height)];
//    [self.view addSubview:self.bgView];
//    self.bgView.backgroundColor = [UIColor cyanColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)switchMainByTabItem:(Dock *)dock originalTab:(int)start destinationTab:(int)end{
    switch (end) {
        case 0:
            if ([self configViewWithTag:0]) {
                [self personalCenterViewByController];
            }
            break;
        case 1:
            if ([self configViewWithTag:1]) {
                [self waitingWorkViewByController];
            }
            break;
        case 2:
            if ([self configViewWithTag:2]) {
                [self workingViewByController];
            }
            break;
        case 3:
            if ([self configViewWithTag:3]) {
                [self messageViewByController];
            }
            break;
        default:
            break;
    }
    
}

- (BOOL)configViewWithTag:(NSInteger)tag {
    NSArray *views = self.view.subviews;
//    if (views.count <= 0) {
//        return true;
//    }
    for (UIView *view in views) {
        if (view.tag == tag) {
            [self.view bringSubviewToFront:view];
            return false;
        }
    }
    return true;
}

- (void)personalCenterViewByController {
    PersonalCenterController *controller = [[PersonalCenterController alloc] init];
    controller.view.tag = 0;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)waitingWorkViewByController {
    WaitingWorkController *controller = [[WaitingWorkController alloc] init];
    controller.view.tag = 1;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)workingViewByController {
    WorkingController *controller = [[WorkingController alloc] init];
    controller.view.tag = 2;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)messageViewByController {
    MessageViewController *controller = [[MessageViewController alloc] init];
    controller.view.tag = 3;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}


@end
