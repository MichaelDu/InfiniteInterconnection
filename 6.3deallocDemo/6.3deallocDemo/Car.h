//
//  Car.h
//  6.3deallocDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

@class Engine;
@interface Car : Vehicle
{
    Engine *_engine;
}

- (void)setEngine:(Engine *)engine;

@end
