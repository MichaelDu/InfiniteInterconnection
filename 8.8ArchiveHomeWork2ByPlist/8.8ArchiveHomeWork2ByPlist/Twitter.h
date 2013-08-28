//
//  Twitter.h
//  8.8ArchiveHomeWork2ByPlist
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Twitter : NSObject
<NSCoding>

@property(nonatomic, retain)NSArray *comment;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, retain)NSDate *createDate;

@end
