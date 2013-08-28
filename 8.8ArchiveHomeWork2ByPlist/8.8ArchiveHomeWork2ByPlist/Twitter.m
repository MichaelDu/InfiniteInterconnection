//
//  Twitter.m
//  8.8ArchiveHomeWork2ByPlist
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Twitter.h"

#define COMMENT @"comment"
#define CONTENT @"content"
#define CREATEDATE @"createDate"

@implementation Twitter

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_comment forKey:COMMENT];
    [aCoder encodeObject:_content forKey:CONTENT];
    [aCoder encodeObject:_createDate forKey:CREATEDATE];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {
        self.content = [aDecoder decodeObjectForKey:CONTENT];
        self.comment = [aDecoder decodeObjectForKey:COMMENT];
        self.createDate = [aDecoder decodeObjectForKey:CREATEDATE];
    }
    return self;
}

- (void)dealloc {
    [_comment release];
    [_content release];
    [_createDate release];
    [super dealloc];
}

@end
