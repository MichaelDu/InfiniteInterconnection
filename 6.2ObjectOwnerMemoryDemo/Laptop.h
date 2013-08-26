//
//  Laptop.h
//  6.2ObjectOwnerMemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CPU;
@interface Laptop : NSObject
{
    @private
    CPU *_cpu;
}

- (void)setCPU:(CPU *)cpu;

- (CPU *)cpu;

@end
