//
//  main.m
//  5.3ProtocolAndDelegate
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        [person requiredMethod];
        [person optionalMethod1];
        [person optinalMethod2];
        
    }
    return 0;
}

