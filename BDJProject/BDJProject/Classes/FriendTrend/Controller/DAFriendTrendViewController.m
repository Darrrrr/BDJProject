//
//  DAFriendTrendViewController.m
//  BDJProject
//
//  Created by gzy on 2018/8/10.
//  Copyright © 2018年 gzy. All rights reserved.
//

#import "DAFriendTrendViewController.h"

@interface DAFriendTrendViewController ()

@end

@implementation DAFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNav];
}

- (void)setNav{
    
    UIButton *gameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [gameBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [gameBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    [gameBtn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:gameBtn];
    self.navigationItem.title = @"我的关注";
}

- (void)leftClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
