//
//  Person.m
//  5.1CategoryDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _name;
@synthesize age = _age;

- (void)test {
    NSLog(@"这是现有类的一个方法");
}

@end

@implementation Person (Creation)


+ (id)personWithName:(NSString *)aName{
    Person *person = [[Person alloc] init];
    person.name = aName;
    return [person autorelease]; //这种方法一般都在内部自动释放了
}

+ (id)personWithName:(NSString *)aName withAge:(int)age{
    Person *person = [[Person alloc] init];
    person.name = aName;
    person.age = age;
    return [person autorelease];
}
// ...

- (id)initWithName:(NSString *)aName{
    self = [super init];
    if (self) {
        self.name = aName;
    }
    return self;
}

- (id)initWithName:(NSString *)aName withAge:(int)age{
    self = [super init];
    if (self) {
        self.name = aName;
        self.age = age;
    }
    return self;
    
}

@end


@implementation Person (Life)

-(void)sleep{
    NSLog(@"他在睡觉");
}

-(void)play{
    NSLog(@"他在玩耍");
}

@end

