//
//  Person.m
//  5.4DelegateDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "Person.h"

@interface Person ()

-(void)startFindApartment:(NSTimer *)timer;

@end

@implementation Person

@synthesize name = _name;
@synthesize delegate = _delegate;

- (id)initWithName:(NSString *)name withDelegate:(id<FindApartment>)delegate{
    self = [super init];
    if (self) {
        self.name = name;
        self.delegate = delegate;    //委托代理
    }
    return self;
}

- (void)wantToFindApartMent{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(startFindApartment:) userInfo:nil repeats:YES];
}

-(void)startFindApartment:(NSTimer *)timer {
    if ([self.delegate respondsToSelector:@selector(findApart:)]) {
        rent = [self.delegate findApart:self];
    }
    
    if (rent == kHighRent) {
        NSLog(@"%@ 说太贵了 麻烦你们再找找", self.name);
        
    }else if(rent == kMiddleRent) {
        NSLog(@"%@ 说还是太贵了 麻烦你们再找找", self.name);
        
    }else{
        NSLog(@"%@ 说就要这套了", self.name);
        [timer invalidate];
        
    }
    printf("\n");
}
@end
