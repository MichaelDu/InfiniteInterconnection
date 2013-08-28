//
//  Person.h
//  5.4DelegateDemo
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindApartment.h"

//@protocol PersonDelegate <NSObject>
//
//-(void)buyApartment:(Person *)person;
//
//@end

@protocol PersonDelegate; //协议声明

@interface Person : NSObject
{
  @private
    NSString *_name;
    id<FindApartment> _delegate;
    id<PersonDelegate> _delegate2; //测试,没有实际的去使用
    HouseRent rent;
}

@property (nonatomic, copy)NSString *name;
@property (nonatomic, assign)id<FindApartment> delegate;

- (id)initWithName:(NSString *)name withDelegate:(id<FindApartment>)delegate;

- (void)wantToFindApartMent;

@end


@protocol PersonDelegate <NSObject> //协议的内容

-(void)buyApartment:(Person *)person;

@end