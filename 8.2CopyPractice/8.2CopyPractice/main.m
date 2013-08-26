//
//  main.m
//  8.2CopyPractice
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *car = [[Car alloc] init];
        Engine *engine = [[Engine alloc] init];
        car.engine = engine;
        [engine release];
        car.weight = @1000;
        car.name = @"奥迪";
        
        Car *car2 = [car copy];
        
        NSLog(@"car:%@, car2:%@", car, car2);
        
        [car release];
        [car2 release];
        
    }
    return 0;
}

