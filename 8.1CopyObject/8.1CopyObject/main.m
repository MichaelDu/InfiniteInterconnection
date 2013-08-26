//
//  main.m
//  8.1CopyObject
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array1 = [[NSMutableArray alloc] initWithObjects:@"one", @"two", @"three", @"four",nil];
        
        //  测试使用retain
//        NSMutableArray *array2 = [array1 retain]; // 只是让retainCount加一，指向的还是同一个对象
//        [array2 removeLastObject];  //  如果删除array2中的最后一个元素，则array1中的最后一个元素也被移除了
//        
//        NSLog(@"%@", array1);
//        NSLog(@"%ld", array1.retainCount);
        
        // 测试copy
//        NSMutableArray *array2 = [array1 mutableCopy]; // mutableCopy拷贝出来的对象是可变的
//        [array2 removeLastObject];
//        NSLog(@"%@", array1);  //  array1 还是四个元素， array2 只有三个，说明array1 和 array2是独立的对象，拷贝了一个新的对象了
//        
        
        //  copy
        //  用 @[] 这种语法创建的对象都是不可变的
        //  不管 源对象是什么对象，copy出来的都是不可变的， mutableCopy出来的都是可变的
//        NSArray *array = @[@"one", @"two"];
//        NSArray *array2 = [array copy];
//        NSMutableArray *array3 = [array mutableCopy];
//        [array3 addObject:@"three"];
//        NSLog(@"%@", array3);
        
        //  浅拷贝
        //  浅拷贝只复制对象的本身，对象里的属性、包含的对象不做复制
//        NSMutableArray *array = [NSMutableArray arrayWithCapacity:3];
//        for (int i = 0; i< 3; i++) {
//            NSObject *obj = [[NSObject alloc] init];
//            [array addObject:obj];
//            [obj release];
//        }
//        
//        for (NSObject *obj in array) {
//            NSLog(@"指针地址：%p, 引用计数：%ld", obj, obj.retainCount);
//        }
//        
//        NSArray *array2 = [array copy];
//        for (NSObject *obj in array2) {
//            NSLog(@"指针地址：%p, 引用计数：%ld", obj, obj.retainCount);
//        }
        
        
        
        //  深拷贝
        //  深拷贝则既复制对象本身，对象的属性也会复制一份
        //  Foundation框架中支持复制的类，默认是浅拷贝
        
        
        
    }
    return 0;
}

