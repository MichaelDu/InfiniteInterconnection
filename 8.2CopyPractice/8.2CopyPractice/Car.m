//
//  Car.m
//  8.2CopyPractice
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Car.h"
#import "Engine.h"

@implementation Car

- (id)copyWithZone:(NSZone *)zone {
    //  浅拷贝
//    Car *car = [[[self class] allocWithZone:zone] init];
//    car.engine = _engine;
//    car.weight = _weight;
//    car.name = _name;
//    return car;
    
    //  深拷贝
    Car *car = [[[self class] allocWithZone:zone] init];
    Engine *engine = [_engine copy];
    car.engine = engine;
    NSNumber *weight = [_weight copy];
    NSString *name = [_name copy];
    car.weight = weight;
    car.name = name;
    
    [engine release];
    [weight release];
    [name release];
    
    return car;
}

- (void)dealloc {
    NSLog(@"car dealloc");
    [_engine release];
    [_weight release];
    [_name release];
    [super dealloc];
}

@end
