//
//  CPU.m
//  6.2ObjectOwnerMemoryDemo
//
//  Created by Michael Du on 13-8-26.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "CPU.h"

@implementation CPU

- (void)setCID:(int)cID
{
    _cID = cID;
}

- (int)cID
{
    return _cID;
}

- (void)dealloc
{
    NSLog(@"CPU dead and id : %d", _cID);
    [super dealloc];
}

@end
