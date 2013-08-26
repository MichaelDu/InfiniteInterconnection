//
//  CPU.h
//  6.2ObjectOwnerMemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPU : NSObject
{
    @private
    int _cID;
}

- (void)setCID:(int)cID;

- (int)cID;

@end
