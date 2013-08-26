//
//  Vehicle.m
//  6.3deallocDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = [name copy];
    }
    return self;
}

- (void)dealloc {
    NSLog(@"vehicle dead");
    [_name release];
    [super dealloc];
}

@end
