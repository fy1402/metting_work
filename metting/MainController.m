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

@interface MainController ()<DockItemDelegate, UISplitViewControllerDelegate>
@property (nonatomic, strong) UIView *bgView;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blackColor];
    
    //加入侧边栏Dock
//    Dock *dock=[[Dock alloc]initWithFrame:CGRectMake(0, 0, 150, self.view.frame.size.height)];
//    dock.dockDelegate=self;
//    [self.view addSubview:dock];
    [self setupRootViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupRootViewController {
    UISplitViewController *splitView = [[UISplitViewController alloc] init];
    
    [self.view addSubview:splitView.view];
    
//    self.splitView = splitView;
    
//    MasterViewController *master = [[MasterViewController alloc] init];
//
//    DetailViewController *detail = [[DetailViewController alloc] init];
//
//    UINavigationController *masterNavigationController = [[UINavigationController alloc] initWithRootViewController:master];
//
//    UINavigationController *detailNavigationController = [[UINavigationController alloc] initWithRootViewController:detail];
//
//    splitView.viewControllers = @[masterNavigationController, detailNavigationController];
//
//    splitView.delegate = self;
    
    
    
        // 初始化分割视图控制器
        UISplitViewController *splitViewController = [[UISplitViewController alloc] init];
    
        PersonalCenterController *personController = [[PersonalCenterController alloc] init];
        WorkingController *workController = [[WorkingController alloc] init];
        WaitingWorkController *waitingController = [[WaitingWorkController alloc] init];
        MessageViewController *messageController = [[MessageViewController alloc] init];
    
    UINavigationController *perNav = [[UINavigationController alloc] initWithRootViewController:personController];
    UINavigationController *workNav = [[UINavigationController alloc] initWithRootViewController:workController];
    UINavigationController *waitingNav = [[UINavigationController alloc] initWithRootViewController:waitingController];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageController];
    
        // 设置分割面板的 2 个视图控制器
        splitViewController.viewControllers = @[perNav, workNav, waitingNav, messageNav];
    
//     添加到窗口
        [self addChildViewController:splitViewController];
        [self.view addSubview:splitViewController.view];
    
}

-(void)switchMainByTabItem:(Dock *)dock originalTab:(int)start destinationTab:(int)end{
    switch (end) {
        case 1:
            if ([self configViewWithTag:end]) {
                [self personalCenterViewByController];
            }
            break;
        case 2:
            if ([self configViewWithTag:end]) {
                [self waitingWorkViewByController];
            }
            break;
        case 3:
            if ([self configViewWithTag:end]) {
                [self workingViewByController];
            }
            break;
        case 4:
            if ([self configViewWithTag:end]) {
                [self messageViewByController];
            }
            break;
        default:
            break;
    }
    
}

- (BOOL)configViewWithTag:(NSInteger)tag {
    NSArray *views = self.view.subviews;
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
    controller.view.tag = 1 * 1000;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)waitingWorkViewByController {
    WaitingWorkController *controller = [[WaitingWorkController alloc] init];
    controller.view.tag = 2 * 1000;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)workingViewByController {
    WorkingController *controller = [[WorkingController alloc] init];
    controller.view.tag = 3 * 1000;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}

- (void)messageViewByController {
    MessageViewController *controller = [[MessageViewController alloc] init];
    controller.view.tag = 4 * 1000;
    [self.view addSubview: controller.view];
    [controller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_offset(0);
        make.left.mas_offset(DockItemWidth + 16);
    }];
}


@end
