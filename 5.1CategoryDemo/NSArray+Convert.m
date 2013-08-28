//
//  NSArray+Convert.m
//  5.1CategoryDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "NSArray+Convert.h"

@implementation NSArray (Convert)

+ (NSMutableArray *)arrayFromNumber:(int)number{
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    
    while (number) {
        
        int last = number % 10;//取出最后一位
        number /= 10;  //去掉末尾
        
        [numberArray addObject:[NSNumber numberWithInt:last]];
        
    }
    
    return [numberArray autorelease];
}

@end
