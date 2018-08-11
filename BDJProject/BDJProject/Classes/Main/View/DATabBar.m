//
//  DATabBar.m
//  BDJProject
//
//  Created by gzy on 2018/8/10.
//  Copyright © 2018年 gzy. All rights reserved.
//

#import "DATabBar.h"

@interface DATabBar()

@property (nonatomic,weak) UIButton *publishBtn;

@end

@implementation DATabBar

-(UIButton *)publishBtn{
    if (_publishBtn == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        [self addSubview:btn];
        _publishBtn = btn;
    }
    return _publishBtn;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    NSInteger count = self.items.count+1;
    CGFloat width = self.frame.size.width/count;
    int i = 0;
    for (UIView *view in self.subviews) {
        
        if ([view  isMemberOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i==2) {
                i++;
            }
            view.frame = CGRectMake(width*i, 1, 90, 48);
            i++;
        }
        NSLog(@"%@",view);
    }
    self.publishBtn.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
}



@end
