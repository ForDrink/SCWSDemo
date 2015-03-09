//
//  ViewController.m
//  SCWSDemo
//
//  Created by 杨福军 on 15/2/16.
//  Copyright (c) 2015年 杨福军. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

//
//
//

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)goButtonTapped:(id)sender {
    NSLog(@"goButtonTapped");
    
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
//    NSDictionary *params = @{@"data" : self.textField.text, @"respond" : @"json"};
    
    [sessionManager POST:@"http://api.yi18.net/drug/list"
              parameters:nil
                 success:^(NSURLSessionDataTask *task, id responseObject) {
                     NSLog(@"responseObject:%@", responseObject);
                 } failure:^(NSURLSessionDataTask *task, NSError *error) {
                     NSLog(@"error:%@", error);
                 }];
}


@end
