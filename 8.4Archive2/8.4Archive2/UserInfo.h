//
//  UserInfo.h
//  8.4Archive2
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject
<NSCoding>

@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSString *email;
@property(nonatomic, copy)NSString *password;
@property(nonatomic, assign)int age;

@end
