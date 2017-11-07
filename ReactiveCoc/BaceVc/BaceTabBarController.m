//
//  BaceTabBarController.m
//  ReactiveCoc
//
//  Created by 南京单聊李 on 2017/10/25.
//  Copyright © 2017年 南京单聊李. All rights reserved.
//
#import "HomeViewController.h"
#import "MineViewController.h"
#import "BaceTabBarController.h"
#import "TextViewController.h"


@interface BaceTabBarController ()

@end

@implementation BaceTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUi];
}
-(void)setUi{
    HomeViewController *homeViewController = [[HomeViewController alloc]init];
    homeViewController.title  = @"首页";
    UIImage *homeImage =[UIImage imageNamed:@"icon_home_shouye"] ;
    UIImage *homeSelectImage = [UIImage imageNamed:@"icon_home_pre_shouye"];
    homeImage = [homeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeSelectImage = [homeSelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *homeItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:homeImage selectedImage:homeSelectImage];
    homeViewController.tabBarItem = homeItem;
    BaceNaviViewController *homeNav = [[BaceNaviViewController alloc]initWithRootViewController:homeViewController];
    
    TextViewController *textViewController = [[TextViewController alloc]init];
    textViewController.title  = @"测试";
    UIImage *textImage =[UIImage imageNamed:@"icon_home_shouye"] ;
    UIImage *textSelectImage = [UIImage imageNamed:@"icon_home_pre_shouye"];
    textImage = [homeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    textSelectImage = [homeSelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *textItem = [[UITabBarItem alloc]initWithTitle:@"测试" image:textImage selectedImage:textSelectImage];
    textViewController.tabBarItem = textItem;
    BaceNaviViewController *textNav = [[BaceNaviViewController alloc]initWithRootViewController:textViewController];
    
    MineViewController *myViewController = [[MineViewController alloc]init];
     myViewController.title  = @"我的";
    UIImage *myImage =[UIImage imageNamed:@"icon_my"] ;
    UIImage *mySelectImage = [UIImage imageNamed:@"icon_pre_my"];
    myImage = [myImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mySelectImage = [mySelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *myItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:myImage selectedImage:mySelectImage];
    myViewController.tabBarItem = myItem;
    BaceNaviViewController *myNav = [[BaceNaviViewController alloc]initWithRootViewController:myViewController];
    
    self.viewControllers = [NSArray arrayWithObjects:homeNav,textNav,myNav, nil];
    self.selectedIndex = 1;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
