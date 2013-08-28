//
//  Agent.m
//  5.4DelegateDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Agent.h"
#import "Person.h"

@implementation Agent

static int count = 1;
-(HouseRent)findApart:(Person *)person {
    
    HouseRent rent;
    if (count == 1) {
        NSLog(@"中介公司对 %@ 说我们找了一个价格较高的公寓", person.name);
        rent = kHighRent;
        
    }else if(count ==2) {
        NSLog(@"中介公司对 %@ 说我们找了一个价格中等的公寓", person.name);
        rent = kMiddleRent;
        
    }else{
        NSLog(@"中介公司对 %@ 说我们找了一个价格较低的公寓", person.name);
        rent = kLowRent;
        
    }
    count ++;
    return rent;
    
}

@end
