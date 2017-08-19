//
//  AppDelegate.m
//  MyIosStart
//
//  Created by yclxiao on 2017/8/17.
//  Copyright © 2017年 yclxiao. All rights reserved.
//

#import "AppDelegate.h"
#import "MeViewController.h"
#import "MainViewController.h"
#import "ExploreViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIImage *defaultImg = nil;
    UIImage *selectedImg = nil;
    
    
    //main
    MainViewController *mainController = [[MainViewController alloc] init];
    mainController.title = @"main";
//    defaultImg = [UIImage imageNamed:@"baomu"];
//    selectedImg = [UIImage imageNamed:@"bingrenpeihu"];
    
    //以这种模式显示图片 UIImageRenderingModeAlwaysOriginal
    defaultImg = [[UIImage imageNamed:@"baomu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selectedImg = [[UIImage imageNamed:@"bingrenpeihu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    mainController.tabBarItem = [[UITabBarItem alloc] initWithTitle:mainController.title image:defaultImg selectedImage:selectedImg];
    
    UINavigationController *mainNavigationController = [[UINavigationController alloc] initWithRootViewController:mainController];
    
    
    //explore
    ExploreViewController *exploreController = [[ExploreViewController alloc] init];
    exploreController.title = @"explore";
    defaultImg = [UIImage imageNamed:@"bingxiangchaixi"];
    selectedImg = [UIImage imageNamed:@"boliqingjie"];
    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:exploreController.title image:defaultImg selectedImage:selectedImg];
    UINavigationController *exploreNavigationController = [[UINavigationController alloc] initWithRootViewController:exploreController];
    
    
    //me
    MeViewController *meController = [[MeViewController alloc] init];
    meController.title = @"me";
    defaultImg = [UIImage imageNamed:@"buyichuman"];
    selectedImg = [UIImage imageNamed:@"chufangshenceng"];
    meController.tabBarItem = [[UITabBarItem alloc] initWithTitle:meController.title image:defaultImg selectedImage:selectedImg];
    UINavigationController *meNavigationController = [[UINavigationController alloc] initWithRootViewController:meController];
    
    
    
    //tabbar
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[mainNavigationController,exploreNavigationController,meNavigationController];
    
    
    
//    UIView* backView = [[UIView alloc]initWithFrame:CGRectMake(0,0,300,49)];
//    
//    backView.backgroundColor = [UIColor redColor];
//    
//    [tabBarController.tabBar insertSubview:backView atIndex:0];
//    
//    tabBarController.tabBar.opaque=YES;
    
    
//    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"chufangshenceng"]];
//    [[UITabBar appearance] setSelectionIndicatorImage:[[UIImage alloc] init]];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
