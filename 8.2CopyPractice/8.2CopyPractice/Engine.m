//
//  Engine.m
//  8.2CopyPractice
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)copyWithZone:(NSZone *)zone {
    Engine *engine = [[[self class] allocWithZone:zone] init];
    return engine;
}

@end
