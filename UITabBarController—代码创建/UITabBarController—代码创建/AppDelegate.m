//
//  AppDelegate.m
//  UITabBarController—代码创建
//
//  Created by apple on 16/1/21.
//  Copyright © 2016年 sunco. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建程序的窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //创建UITabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    //给UITabBarController添加子视图控制器
    UIViewController *vc= [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    vc.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor"];
    vc.tabBarItem.title = @"联系人";
    vc.tabBarItem.badgeValue = @"12";
    [tabBarController addChildViewController:vc];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor greenColor];
    vc1.tabBarItem.image = [UIImage imageNamed:@"tab_me_nor"];
    vc1.tabBarItem.title = @"动态";
    [tabBarController addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    vc2.tabBarItem.image = [UIImage imageNamed:@"tab_me_nor"];
    vc2.tabBarItem.title = @"设置";
    [tabBarController addChildViewController:vc2];
    
    //给UITabBarController添加子视图的另外一种方式
//    tabBarController.viewControllers = [NSArray arrayWithObjects:vc, vc1, vc2, nil];
    
    //设置窗口的根视图控制器
    self.window.rootViewController = tabBarController;
    
    //设置window为主窗口并可见
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
