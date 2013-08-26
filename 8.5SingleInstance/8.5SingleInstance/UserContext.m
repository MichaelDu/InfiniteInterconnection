//
//  UserContext.m
//  8.5SingleInstance
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "UserContext.h"

static UserContext *singleInstance = nil;
@implementation UserContext

+ (id)shareUserContext {
    @synchronized(self){  //  一个同步锁，线程保护，线程安全的，有可能多线程调用这个方法
        if (singleInstance == nil) {
            singleInstance = [[[self class] alloc] init];
        }
    };
    return singleInstance;
}

+ (id)allocWithZone:(NSZone *)zone {
    if (singleInstance == nil) {
        singleInstance = [super allocWithZone:zone];
    }
    return singleInstance;
}

- (id)copyWithZone:(NSZone *)zone {
    return singleInstance;
}

- (id)retain {
    return singleInstance;
}

- (oneway void)release {
    //  什么都不做
}

- (id)autorelease {
    return singleInstance;
}

- (NSUInteger)retainCount {
    return UINT_MAX; 
}

@end
