//
//  Person.h
//  8.8ArchiveHomeWork2ByPlist
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
<NSCoding>

@property(nonatomic, copy)NSString *name;
@property(nonatomic, retain)NSNumber *age;
@property(nonatomic, retain)NSDate *birthday;

@end
