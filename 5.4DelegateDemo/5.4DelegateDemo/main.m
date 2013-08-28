//
//  main.m
//  5.4DelegateDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Agent *agent = [[Agent alloc] init];
        
        Person *jack = [[Person alloc] initWithName:@"Jack" withDelegate:agent];
        
        [jack wantToFindApartMent];
        
        BOOL isTrue = YES;
        while (isTrue) {
            NSDate *date = [NSDate date]; //得到当前时间
            [[NSRunLoop currentRunLoop] runUntilDate:[date dateByAddingTimeInterval:6]];  // 运行六秒
            isTrue = NO;
            printf("\n");
            NSLog(@"程序退出了");
        }
//        [[NSRunLoop currentRunLoop] run];  //  得到当前的runloop  然后运行起来
        
    }
    return 0;
}

