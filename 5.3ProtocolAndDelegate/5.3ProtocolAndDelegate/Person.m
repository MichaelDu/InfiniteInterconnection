//
//  Person.m
//  5.3ProtocolAndDelegate
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)requiredMethod {
    NSLog(@"require Method");
}

- (void)optinalMethod2 {
    NSLog(@"option method2");
}

- (void)optionalMethod1{
    NSLog(@"option method");
}

@end
