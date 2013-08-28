//
//  FindApartment.h
//  5.4DelegateDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
typedef enum {
    kHighRent = 0,
    kMiddleRent = 1,
    kLowRent = 2
    
}HouseRent;

@protocol FindApartment <NSObject>

-(HouseRent)findApart:(Person *)person;

@end
