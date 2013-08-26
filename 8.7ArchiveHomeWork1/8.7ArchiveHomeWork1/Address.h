//
//  Address.h
//  8.7ArchiveHomeWork1
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

//  姓名、性别、年龄、地址
@interface Address : NSObject
<NSCoding>

@property(nonatomic, copy)NSString *name;
@property(nonatomic, retain)NSNumber *age;
@property(nonatomic, copy)NSString *sex;
@property(nonatomic, copy)NSString *addr;

@end
