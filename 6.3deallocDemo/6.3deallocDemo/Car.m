//
//  Car.m
//  6.3deallocDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Car.h"
#import "Engine.h"

@implementation Car

- (void)setEngine:(Engine *)engine {
    if (_engine != engine) {
        [_engine release];
        _engine = [engine retain];
    }
}

- (Engine *)engine{
    return _engine;
}

- (void)dealloc {
    NSLog(@"car dead");
    [_engine release];
    [super dealloc];
}

@end
