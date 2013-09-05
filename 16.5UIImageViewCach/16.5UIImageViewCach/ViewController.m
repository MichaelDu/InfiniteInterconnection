//
//  ViewController.m
//  16.5UIImageViewCach
//
//  Created by Michael Du on 13-9-5.
//  Copyright (c) 2013年 com.redianying. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+loadimage.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 0, 100, 100);
    [btn setTitle:@"加载" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(loadAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
	// Do any additional setup after loading the view.
}

-(void)loadAction {
    for (int i=0; i<10; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 50*i+10, 100, 40)];
        imageView.backgroundColor = [UIColor orangeColor];
        [self.view addSubview:imageView];
        [imageView setImageWithUrl:[NSURL URLWithString:@"http://su.bdimg.com/static/skin/img/logo_white.png"]];
//        [imageView setImageWithUrl:[NSURL URLWithString:@"http://c.hiphotos.baidu.com/album/w%3D2048/sign=1b60b77f9c82d158bb825eb1b43218d8/c2fdfc039245d6881e568335a4c27d1ed31b24ce.jpg"]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
