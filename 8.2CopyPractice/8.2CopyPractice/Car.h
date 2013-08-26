//
//  Car.h
//  8.2CopyPractice
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;
@interface Car : NSObject
<NSCopying>

@property(nonatomic, retain)Engine *engine;
@property(nonatomic, retain)NSNumber *weight;
@property(nonatomic, copy)NSString *name;

@end
