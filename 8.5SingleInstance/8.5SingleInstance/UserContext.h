//
//  UserContext.h
//  8.5SingleInstance
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserContext : NSObject
<NSCopying>

@property(nonatomic, copy)NSString *userName;
@property(nonatomic, copy)NSString *email;

+ (id)shareUserContext;

@end
