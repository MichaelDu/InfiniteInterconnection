//
//  Person.m
//  8.8ArchiveHomeWork2ByPlist
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

#define NAME @"name"
#define AGE @"age"
#define BIRTHDAY @"birthday"

@implementation Person

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_age forKey:AGE];
    [aCoder encodeObject:_birthday forKey:BIRTHDAY];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {
        self.name = [aDecoder decodeObjectForKey:NAME];
        self.age = [aDecoder decodeObjectForKey:AGE];
        self.birthday = [aDecoder decodeObjectForKey:BIRTHDAY];
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_age release];
    [_birthday release];
    [super dealloc];
}

@end
