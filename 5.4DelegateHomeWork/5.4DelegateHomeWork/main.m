//
//  main.m
//  5.4DelegateHomeWork
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Nurse.h"
#import "Children.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Nurse *nurse = [[Nurse alloc] init];
        Children *jack = [[Children alloc] initWithDelegate:nurse];
        [jack eat];
        
    }
    return 0;
}

