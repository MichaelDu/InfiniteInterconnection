//
//  UserInfo.m
//  8.4Archive2
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "UserInfo.h"

//  运行的错误尽可能在编译的时候就让他报出来

// 下面编码和解码的时候都需要写key，所以我们定义一个宏，是比较好的，其他地方用到key，最好用宏代替
#define NAME @"name"
#define EMAIL @"email"
#define PASSWORD @"password"
#define AGE @"age"

@implementation UserInfo

//  对属性编码，归档的时候调用
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_email forKey:EMAIL];
    [aCoder encodeObject:_password forKey:PASSWORD];
    [aCoder encodeInt:_age forKey:AGE];
}

//  对属性解码，解归档的时候会调用
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self != nil) {
        _age = [aDecoder decodeIntForKey:AGE];
        self.name = [aDecoder decodeObjectForKey:NAME]; //  这里需要获得所有权，用.或者用copy
        self.email = [aDecoder decodeObjectForKey:EMAIL];
        self.password = [aDecoder decodeObjectForKey:PASSWORD];
    }
    return self;
}

- (NSString *)description {
    NSString *str = [NSString stringWithFormat:@"age = %d, name = %@, email = %@, password = %@", _age, _name, _email, _password];
    return str;
}

- (void)dealloc {
    [_name release];
    [_email release];
    [_password release];
    [super release];
}
@end
