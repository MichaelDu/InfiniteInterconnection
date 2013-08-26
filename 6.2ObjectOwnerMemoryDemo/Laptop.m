//
//  Laptop.m
//  6.2ObjectOwnerMemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Laptop.h"

@implementation Laptop

//- (void)setCPU:(CPU *)cpu
//{
//    _cpu = cpu;
//}//第一种情况，普通赋值

//- (void)setCPU:(CPU *)cpu
//{
//    _cpu = [cpu retain]; // 2
//}//第二种情况：保留对象

//- (void)setCPU:(CPU *)cpu {
//    [_cpu release]; //释放旧对象
//    _cpu = [cpu retain];//保留新对象
//}//第三种情况

- (void)setCPU:(CPU *)cpu {
    if (_cpu != cpu) {
        [_cpu release];
        _cpu = cpu;
    }
}//优化后的程序

- (CPU *)cpu
{
    return _cpu;
}

- (void)dealloc
{
    NSLog(@"laptop dead");
    [_cpu release];
    [super dealloc];
}

@end
