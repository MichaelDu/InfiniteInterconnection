//
//  Children.m
//  5.4DelegateHomeWork
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Children.h"

@implementation Children

- (id)initWithDelegate:(id<NurseDelegate>)delegate
{
    self = [super init];
    if (self) {
        self.delegate = delegate;
    }
    return self;
}

- (void)eat{
    NSLog(@"我想要吃饭");
    if ([self.delegate respondsToSelector:@selector(eat)]) {
        [self.delegate eat];
    }
}

@end
