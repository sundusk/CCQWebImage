//
//  DownloadOperation.h
//  CCQSD
//
//  Created by 神威 on 16/8/21.
//  Copyright © 2016年 ccq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DownloadOperation : NSOperation
//接受控制器传入的图片地址
@property (copy , nonatomic)NSString *URLString;

//接受控制器传入的下载完成的回调
@property (copy , nonatomic) void(^finisheBlock)(UIImage *image);




@end
