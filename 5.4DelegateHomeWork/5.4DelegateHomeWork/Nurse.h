//
//  Nurse.h
//  5.4DelegateHomeWork
//
//  Created by Michael Du on 13-8-28.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NurseDelegate <NSObject>

-(void)eat;

@end

@interface Nurse : NSObject<NurseDelegate>

@end
