//
//  Vehicle.h
//  6.3deallocDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
{
    @private
    NSString *_name;
}

- (id)initWithName:(NSString *)name;

@end
