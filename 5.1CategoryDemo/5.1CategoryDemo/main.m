//
//  main.m
//  5.1CategoryDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Test.h"

#import "NSArray+Convert.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //
        Person *jack = [Person personWithName:@"jack"];
        NSLog(@"person : %@", jack.name);
        [jack eat];
        [jack play];
        [jack sleep];
        
        [jack test];
        
        
        //
        NSMutableArray *numberArray = [NSArray arrayFromNumber:1234567];
        for (NSNumber *number in numberArray) {
            NSLog(@"number : %@", number);
        }
        
        
    }
    return 0;
}

