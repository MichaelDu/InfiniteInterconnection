//
//  Children.h
//  5.4DelegateHomeWork
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Nurse.h"

@interface Children : NSObject

@property(nonatomic,assign)id<NurseDelegate> delegate;
- (id)initWithDelegate:(id<NurseDelegate>)delegate;

@end
