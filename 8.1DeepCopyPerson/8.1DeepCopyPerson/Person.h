//
//  Person.h
//  8.1DeepCopyPerson
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
<NSCopying> //  因为这个对象只是一个不可变的对象，可以用他跟数组和字典相比,咱们这里只有一个对象，不存在可变不可变，我们就不去实现可变的协议

@property(nonatomic, copy)NSString *name;
@property(nonatomic, retain)NSNumber *age;

@end
