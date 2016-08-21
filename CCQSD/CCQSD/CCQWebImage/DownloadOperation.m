//
//  DownloadOperation.m
//  CCQSD
//
//  Created by 神威 on 16/8/21.
//  Copyright © 2016年 ccq. All rights reserved.
//

#import "DownloadOperation.h"
@interface DownloadOperation ()


//接受控制器传入的图片地址
@property (copy , nonatomic)NSString *URLString;

//接受控制器传入的下载完成的回调
@property (copy , nonatomic) void(^finisheBlock)(UIImage *image);
@end

@implementation DownloadOperation

/**
 *  重新自定义操作的入口的方法
 */

- (void)main{
    
    NSLog(@"%@",self.URLString);
    
    //下载图片
    NSURL *URL = [NSURL URLWithString:self.URLString];
    NSData *data = [NSData dataWithContentsOfURL:URL];
    UIImage *image = [UIImage imageWithData:data];
    
    //图片下载完成之后，需要把图片传递到VC
    if(self.finisheBlock != nil){
        
        //把图片对象传递到控制器
       [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.finisheBlock(image);
       }];
    }

}

//图片下载主方法

+(instancetype)downloadWithURLString:(NSString *)URLString finishedBlock:(void (^)(UIImage *))finishedBlock{
    //创建自定义的操作
    
    DownloadOperation *op = [[DownloadOperation alloc]init];
    
    //记录外界传入的图片地址和下载完成回调
    op.URLString = URLString;
    op.finisheBlock = finishedBlock;
    //返回自定义操作
    return op;
}
@end
