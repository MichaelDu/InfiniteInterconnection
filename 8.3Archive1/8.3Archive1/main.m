//
//  main.m
//  MyAchieve
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        //-========================第一种方式=================
        
        /* 归档对象 */
        //        // 预归档数组
        //        NSArray *array = @[@"abc", @"123", @1234];
        //        //  获取根目录
        //        NSString *homePath = NSHomeDirectory();
        //        //  加一个文件名
        //        NSString *path = [homePath stringByAppendingPathComponent:@"test.archive"];
        //        //  将数组归档到path路径
        //        BOOL success =[NSKeyedArchiver archiveRootObject:array toFile:path];
        //        if (success) {
        //            NSLog(@"archive success");
        //        }
        
        /* 解归档对象 */
        //        NSString *homePath = NSHomeDirectory();
        //        NSString *path = [homePath stringByAppendingPathComponent:@"test.archive"];
        //        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        //        NSLog(@"array = %@", array);
        
        
        //-========================第二种方式=================
        
        //        /*归档（序列化）*/
        //        NSString *homePath = NSHomeDirectory();
        //        NSString *path = [homePath stringByAppendingPathComponent:@"archive2.arhchiv"];
        //        NSMutableData *data = [NSMutableData data];
        //        NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        //        //编码
        //        NSArray *array = @[@"jack", @"tom"];
        //        [archiver encodeInt:100 forKey:@"age"];
        //        [archiver encodeObject:array forKey:@"names"];
        //        [archiver finishEncoding];
        //        [archiver release];
        //
        //        BOOL success = [data writeToFile:path atomically:YES];
        //        if (success) {
        //            NSLog(@"archive success");
        //        }
        
        /*解归档(反序列化)*/
        NSString *homePath = NSHomeDirectory();
        NSString *path = [homePath stringByAppendingPathComponent:@"archive2.arhchiv"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSKeyedUnarchiver *unArchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        int age = [unArchiver decodeIntForKey:@"age"];
        NSArray *names = [unArchiver decodeObjectForKey:@"names"];
        [unArchiver release];
        NSLog(@"age = %d, names = %@", age, names);
        
    }
    return 0;
}

