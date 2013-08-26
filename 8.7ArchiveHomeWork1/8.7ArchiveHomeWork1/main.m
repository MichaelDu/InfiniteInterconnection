//
//  main.m
//  8.7ArchiveHomeWork1
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Address.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
        // 首页存储(归档)
        Address *address = [[Address alloc] init];
        address.name = @"Michael";
        address.sex = @"男";
        address.age = @23;
        address.addr = @"Beijing";
        
        Address *address2 = [[Address alloc] init];
        address2.name = @"Du";
        address2.sex = @"男";
        address2.age = @24;
        address2.addr = @"HuLan";
        
        NSArray *array = @[address, address2];
        [address release];
        [address2 release];
        
        //  归档
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"address.archive"];
        BOOL success = [NSKeyedArchiver archiveRootObject:array toFile:path];
        if (success) {
            NSLog(@"archive success");
        }
         */
        
       /*
        //  拿出来（解归档)
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"address.archive"];
        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSMutableArray *newArray = [NSMutableArray arrayWithArray:array];
        
        Address *address = [[Address alloc] init];
        address.name = @"Jack";
        address.sex = @"男";
        address.age = @25;
        address.addr = @"Guangdong";
        [newArray addObject:address];
        [address release];
        //再进行归档
        BOOL success = [NSKeyedArchiver archiveRootObject:newArray toFile:path];
        if (success) {
            NSLog(@"archive success");
        }
        */
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"address.archive"];
        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"array = %@", array);
 
        
    }
    return 0;
}

