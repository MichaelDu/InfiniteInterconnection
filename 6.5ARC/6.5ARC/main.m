//
//  main.m
//  6.5ARC
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSObject *object = [[NSObject alloc] init];
        [object release];

        
    }
    return 0;
}

