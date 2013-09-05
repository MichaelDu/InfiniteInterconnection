//
//  ViewController.m
//  16.7NSURLConnectionTask
//
//  Created by Michael Du on 13-9-5.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
}


- (IBAction)requestAction:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    request setURL:(NSURL *);
    //设置请求方式
    [request setHTTPMethod:@"GET"];
    //设置超时时间
    [request setTimeoutInterval:60];
    
    //设置请求体
//    [request setHTTPBody:<#(NSData *)#>];
    //设置请求头
//    request setValue:<#(NSString *)#> forHTTPHeaderField:<#(NSString *)#>
    
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    
    //发送一个同步请求
    NSData *data = [NSURLConnection sendSynchronousRequest:request
                          returningResponse:&response
                                      error:&error];
    NSInteger statusCode = response.statusCode;
    NSDictionary *headFields = response.allHeaderFields;
    NSLog(@"响应码:%d", statusCode);
    NSLog(@"响应头:%@", headFields);
    
    
    
    NSString *htmlstring = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", htmlstring);
    
}

@end
