//
//  main.m
//  6.2ObjectOwnerMemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPU.h"
#import "Laptop.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        CPU *powerPC = [[CPU alloc] init];
        [powerPC setCID:101];
        
        Laptop *apple = [[Laptop alloc] init];
        [apple setCPU:powerPC];
        [powerPC release];
        
        CPU *intel = [[CPU alloc] init];
        [intel setCID:102];
        [apple setCPU:intel];
        [intel release];
        
        [apple release];
        
    }
    return 0;
}

