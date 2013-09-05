//
//  HelloProtocol.h
//  5.3ProtocolAndDelegate
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HelloProtocol <NSObject>

@required
-(void)requiredMethod;

@optional
-(void)optionalMethod1;
-(void)optinalMethod2;

@end
