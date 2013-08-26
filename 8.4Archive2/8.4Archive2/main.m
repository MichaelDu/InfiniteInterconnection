//
//  main.m
//  8.4Archive2
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"userInfo.archive"];
        
       /*归档*/
//        UserInfo *user = [[UserInfo alloc] init];
//        user.name = @"Michael Du";
//        user.age = 22;
//        user.password = @"bugaosuni";
//        user.email = @"dcj3sjt@126.com";
//        
//        BOOL success = [NSKeyedArchiver archiveRootObject:user toFile:path];
//        if (success) {
//            NSLog(@"archive success");
//        }
//        
//        [user release];
        
        
        /*解归档*/
        UserInfo *user = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"%@", user);
        
    }
    return 0;
}

