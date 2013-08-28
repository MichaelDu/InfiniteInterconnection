//
//  Person.h
//  5.1CategoryDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @private
    NSString *_name;
    int      _age;
}
@property(nonatomic, copy)NSString *name;
@property(nonatomic)int age;

- (void)test;

@end

//  一个类目
@interface Person (Creation)

+ (id)personWithName:(NSString *)aName;

+ (id)personWithName:(NSString *)aName withAge:(int)age;
// ...

- (id)initWithName:(NSString *)aName;

- (id)initWithName:(NSString *)aName withAge:(int)age;

@end

//再加一个类目
@interface Person (Life)

-(void)sleep;

-(void)play;

@end