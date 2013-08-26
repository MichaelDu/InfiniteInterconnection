//
//  main.m
//  6.3deallocDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *name = [[NSString alloc] initWithFormat:@"audi"];
        Car *car = [[Car alloc] initWithName:name];
        [name release];
        
        Engine *v6 = [[Engine alloc] init];
        [car setEngine:v6];
        [v6 release];
        
        [car release];
        
    }
    return 0;
}

