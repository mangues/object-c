//
//  Car.h
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

#pragma mark - 属性
#pragma mark 车牌号
@property (nonatomic,copy) NSString *no;

#pragma mark - 公共方法
#pragma mark 运行方法
-(void)run;

@end
