//
//  DAMainViewController.m
//  BDJProject
//
//  Created by gzy on 2018/8/10.
//  Copyright © 2018年 gzy. All rights reserved.
//

#import "DAMainViewController.h"
#import "DAEssenceViewController.h"
#import "DANewViewController.h"
#import "DAPublishViewController.h"
#import "DAFriendTrendViewController.h"
#import "DAMeViewController.h"
#import "DATabBar.h"
#import "DANavController.h"

@interface DAMainViewController ()
{
    NSInteger _selectOld;
}

@end

@implementation DAMainViewController
+ (void)load{
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    NSMutableDictionary *attrs1 = [NSMutableDictionary dictionary];
    attrs1[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrs1 forState:UIControlStateSelected];
    
}

- (void)setupController{
    DAEssenceViewController *essenceVC = [[DAEssenceViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController  alloc]initWithRootViewController:essenceVC];
        [self addChildViewController:nav1];
    
    DANewViewController *newVC = [[DANewViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController  alloc]initWithRootViewController:newVC];
     [self addChildViewController:nav2];
    
    
    DAFriendTrendViewController *friendVC = [[DAFriendTrendViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController  alloc]initWithRootViewController:friendVC];
    [self addChildViewController:nav4];
    
    DAMeViewController *meVC = [[DAMeViewController alloc]init];
    UINavigationController *nav5 = [[UINavigationController  alloc]initWithRootViewController:meVC];
     [self addChildViewController:nav5];
}

- (void)setTabBarButton{
    DANavController *nav1 = self.childViewControllers[0];
    nav1.tabBarItem.title = @"精华";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    //
    DANavController *nav2 = self.childViewControllers[1];
    nav2.tabBarItem.title = @"新帖";
    nav2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    //
    DANavController *nav4 = self.childViewControllers[2];
    nav4.tabBarItem.title = @"关注";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    //
    DANavController *nav5 = self.childViewControllers[3];
    nav5.tabBarItem.title = @"我的";
    nav5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav5.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    
}

- (void)setTabBar{
    DATabBar *tabBar = [[DATabBar alloc]init];
    [self setValue:tabBar forKey:@"tabBar"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupController];
    [self setTabBarButton];
    [self setTabBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
