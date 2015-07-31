//
//  People.h
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Car;

@interface People : NSObject{
    Car *_car;
}

#pragma mark - 属性
#pragma mark 姓名
@property (nonatomic,copy) NSString *name;

#pragma mark - 公共方法
#pragma mark Car属性的set方法
-(void)setCar:(Car *)car;
#pragma mark  Car属性的get方法
-(Car *)car;
@end