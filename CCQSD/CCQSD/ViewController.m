//
//  ViewController.m
//  CCQSD
//
//  Created by 神威 on 16/8/21.
//  Copyright © 2016年 ccq. All rights reserved.
//

#import "ViewController.h"
#import "DownloadOperation.h"

@interface ViewController ()

@end

@implementation ViewController{
    //全局队列
    NSOperationQueue *_queue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //实例化全局队列
    _queue = [[NSOperationQueue alloc]init];
   
    //实例化自定义操作
    DownloadOperation *op = [[DownloadOperation alloc]init];
    
    //把自定义操作添加到队列
    
    [_queue addOperation:op];
    
    //指定自定义操作执行的任务
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
