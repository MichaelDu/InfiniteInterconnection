//
//  Person.m
//  8.1DeepCopyPerson
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone {
    //  自定义浅拷贝
//    Person *person = [[[self class] allocWithZone:zone] init]; // 创建一个新的对象
//    person.name = _name;  // person.name指向_name同一个地址，没有对属性进行拷贝
//    person.age = _age;
//    return person;
    
    //  自定义深拷贝
    Person *person = [[[self class] allocWithZone:zone] init];
    person.name = [_name mutableCopy];  //foundation框架里面的copy做了优化，不会新创建一个对象，他只会retain一下，前提是不可变对象
    person.age = [_age copy];
    return person;
}

@end
