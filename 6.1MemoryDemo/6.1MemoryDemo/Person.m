//
//  Person.m
//  6.1MemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc {
    NSLog(@"person dead");
    [super dealloc];
}

@end
