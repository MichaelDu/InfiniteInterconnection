//
//  UIImageView+loadimage.m
//  16.5UIImageViewCach
//
//  Created by Michael Du on 13-9-5.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "UIImageView+loadimage.h"

@implementation UIImageView (loadimage)

-(void)setImageWithUrl:(NSURL *)url {
    [self performSelectorInBackground:@selector(loadData:) withObject:url];
}

-(void)loadData:(NSURL *)url {
    @autoreleasepool {
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        
        //在主线程中执行setImage方法
        [self performSelectorOnMainThread:@selector(setImage:) withObject:image waitUntilDone:YES];
    }
}

@end
