//
//  main.m
//  6.5Autorelease
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//
//        Person *jack = [[Person alloc] init];
//        [jack autorelease];
//        NSLog(@"pool exists");
//
    }
//    NSLog(@"pool dead");
    
    
    
    //2
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    
//    Person *jack = [[Person alloc] init];
//    [jack autorelease];  // 在 自动释放池销毁的时候会对里面的每个对象发送一条 release消息
//    [jack retain];
//    NSLog(@"pool exists");
//    
//    [pool release];
//    NSLog(@"pool dead ：%ld", [jack retainCount]);
//    
    //3
    @autoreleasepool {
        Person *jack = [[Person alloc] init];
        @autoreleasepool {
            [jack autorelease];  // 在 自动释放池销毁的时候会对里面的每个对象发送一条 release消息
            [jack retain];
            NSLog(@"pool exists");
            
            NSLog(@"jack1 dead ：%ld", [jack retainCount]);
        }
        NSLog(@"jack2 dead ：%ld", [jack retainCount]);
    }
    return 0;
}

