//
//  main.m
//  6.1MemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *jack = [[Person alloc] init];
        NSLog(@"jack 1 : %ld", [jack retainCount]);
        
        [jack retain];
        NSLog(@"jack 2 : %ld", [jack retainCount]);
        
        [jack retain];
        NSLog(@"jack 3 : %ld", [jack retainCount]);
        
        [jack release];
        NSLog(@"release 1 : %ld", [jack retainCount]);
        
        [jack release];
        NSLog(@"release 2 : %ld", [jack retainCount]);
        
        [jack release];
        
        
        
        
    }
    return 0;
}

