//
//  Person.m
//  5.2ExtensionDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"


@interface Person ()

-(void)privateMethod; //写在这里就是延展，很明确这个方法是私有的

@end

@implementation Person

-(void)test{
    NSLog(@"test");
    [self privateMethod];
}

-(void)privateMethod{
    NSLog(@"This private Method");
}

@end
