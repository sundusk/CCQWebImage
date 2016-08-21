//
//  DownloadOperation.m
//  CCQSD
//
//  Created by 神威 on 16/8/21.
//  Copyright © 2016年 ccq. All rights reserved.
//

#import "DownloadOperation.h"
@interface DownloadOperation ()



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
@end
