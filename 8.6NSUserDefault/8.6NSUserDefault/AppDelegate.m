//
//  AppDelegate.m
//  8.6NSUserDefault
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //  userdefault只能存取一些小数据量，比如用户名密码
//    NSArray *array = @[@"123", @"abc"];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setInteger:1234 forKey:@"number"];
//    [userDefaults setObject:array forKey:@"array"];
//    [userDefaults synchronize]; //同步到本地的一个文件
    
    //  从userdefault中取数据
    NSInteger number = [userDefaults integerForKey:@"number"];
    NSArray *array = [userDefaults objectForKey:@"array"];
    NSLog(@"number = %d, array = %@", number, array);
    
    //  userdefault是一个plist文件
    //  /Users/jiufreeman/Library/Application Support/iPhone Simulator/6.1/Applications/6A94AC37-725E-4F58-A62D-95352E21C953/Library/Preferences/com.redianying.--6NSUserDefault
    
    //  模拟器沙盒位置
//    /Users/jiufreeman/Library/Application Support/iPhone Simulator/
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
