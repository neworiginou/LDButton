//
//  ViewController.m
//  LDButton
//
//  Created by lidi on 15/3/15.
//  Copyright (c) 2015年 lidi. All rights reserved.
//

#import "ViewController.h"
#import "LDButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LDButton *btn = [LDButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor yellowColor];
    btn.frame = CGRectMake(100, 200, 100, 100);
    btn.titleLabel.font  = [UIFont systemFontOfSize:15.0];
    [btn setImage:[UIImage imageNamed:@"com_bt_tab_job_collection_normal"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"com_bt_tab_job_collection_pressed"] forState:UIControlStateSelected];
    [btn setImage:[UIImage imageNamed:@"com_bt_tab_job_collection_pressed"] forState:UIControlStateHighlighted];
    //设置图片和文字尺寸
    btn.imageRect = CGRectMake((100 - 40)/2.0, 50 - 30, 40, 30);
    btn.labelRect = CGRectMake(0, 50, 100, 30);
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn setTitle:@"收藏" forState:UIControlStateNormal];
    [btn setTitle:@"已收藏" forState:UIControlStateSelected];
    [btn setTitle:@"已收藏" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick:(UIButton *)sender {
    sender.selected = !sender.selected;
}
@end
