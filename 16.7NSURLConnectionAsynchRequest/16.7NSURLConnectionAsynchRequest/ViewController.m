//
//  ViewController.m
//  16.7NSURLConnectionAsynchRequest
//
//  Created by Michael Du on 13-9-5.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<NSURLConnectionDataDelegate>
{
    NSMutableData *resultData;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    resultData = [[NSMutableData alloc] init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//发送异步请求
- (IBAction)request:(id)sender {
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
    
    //发送一个异步请求
    [NSURLConnection connectionWithRequest:request delegate:self];
}

#pragma mark - NSURLConnectionData delegate

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSHTTPURLResponse *httpResp = (NSHTTPURLResponse *)response;
    NSDictionary *allHeadFields = [httpResp allHeaderFields];
    NSLog(@"%@", allHeadFields);
}

//接受数据的协议方法,此方法会被多次调用,每次调用服务器传输一部分数据
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [resultData appendData:data];
    
    //    resultData.length;
}

//数据加载完成之后调用的协议方法
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSString *htmlstring = [[NSString alloc] initWithData:resultData encoding:NSUTF8StringEncoding];
    NSLog(@"%@", htmlstring);
}
@end
