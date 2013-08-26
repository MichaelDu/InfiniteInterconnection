//
//  main.m
//  8.1DeepCopyPerson
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *person1 = [[Person alloc] init];
        person1.name = @"jack";
        person1.age = @22;
        
        Person *person2 = [person1 copy]; //  他会去找Person中的copyWithZone方法
        NSLog(@"person1的地址：%p person2的地址:%p", person1, person2);  // person1和person2的地址不一样，说明拷贝了
        NSLog(@"age1的地址：%p age2的地址：%p", person1.age, person2.age); //age1和age2的地址是一样的，说明没有拷贝属性，则是浅拷贝
        NSLog(@"name1的地址：%p name2的地址：%p", person1.name, person2.name); //age1和age2的地址是一样的，说明没有拷贝属性，则是浅拷贝
        
        
        NSArray *array = [[NSArray alloc] initWithObjects:@"ttt", nil];
        NSArray *array2 = [array copy];  //  不可变的对象做copy，作用相当于retain
        NSLog(@"array1指针: %p, array2指针：%p", array, array2);
        NSLog(@"array.retainCount = %ld", array.retainCount);
        NSLog(@"array2.retainCount = %ld", array2.retainCount);
        
        
    }
    return 0;
}

