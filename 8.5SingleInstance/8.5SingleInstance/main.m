//
//  main.m
//  8.5SingleInstance
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserContext.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        UserContext *userContext = [UserContext shareUserContext];
        UserContext *userContext1 = [UserContext shareUserContext];
        UserContext *userContext2 = [[UserContext alloc] init];
        UserContext *userContext3 = [userContext copy];
        [userContext release];
        [userContext release];
        [userContext release];
        [userContext release];
        [userContext release];
        NSLog(@"");
        
    }
    return 0;
}

