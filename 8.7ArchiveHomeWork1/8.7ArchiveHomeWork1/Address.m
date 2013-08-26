//
//  Address.m
//  8.7ArchiveHomeWork1
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Address.h"

#define NAME @"name"
#define SEX @"sex"
#define AGE @"age"
#define ADDR @"addr"

@implementation Address

// 归档的时候调用，编码
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_sex forKey:SEX];
    [aCoder encodeObject:_addr forKey:ADDR];
    [aCoder encodeObject:_age forKey:AGE];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {
        self.name = [aDecoder decodeObjectForKey:NAME];
        self.age = [aDecoder decodeObjectForKey:AGE];
        self.sex = [aDecoder decodeObjectForKey:SEX];
        self.addr = [aDecoder decodeObjectForKey:ADDR];
    }
    return self;
}

- (NSString *)description {
    NSString *str = [NSString stringWithFormat:@"name = %@, age = %@, sex = %@, addr = %@", _name, _age, _sex, _addr];
    return str;
}

- (void)dealloc {
    [_name release];
    [_age release];
    [_sex release];
    [_addr release];
    [super dealloc];
}

@end
