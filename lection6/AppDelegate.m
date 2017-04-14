//
//  AppDelegate.m
//  lection6
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "TableVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    
    
    /*
     ViewController1 *firstVC =[ViewController1 new];
     ViewController3 *thirdVC=[ViewController3 new];
     ViewController4 *forthVC =[ViewController4 new];
     
     UINavigationController *nc1=[UINavigationController new];
     nc1.viewControllers=@[firstVC];
     
     UINavigationController *nc2=[UINavigationController new];
     nc2.viewControllers=@[forthVC];
     
     UITabBarController *tabbarC=[[UITabBarController alloc]init];
     tabbarC.viewControllers=@[thirdVC,nc1,nc2];
     nc1.tabBarItem.title=@"second";
     nc2.tabBarItem.title=@"third";
     
     window.rootViewController=tabbarC;
     */
    
    TableVC *tvc=[TableVC new];
    UINavigationController *nc=[[UINavigationController alloc]init];
    nc.viewControllers=@[tvc];
    
    window.rootViewController=nc;
    self.window=window;
    [window makeKeyAndVisible];
    
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
