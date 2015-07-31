//
//  People.m
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import "People.h"
#import "Car.h"

@implementation People

#pragma mark - 公共方法
#pragma mark Car属性的set方法
-(void)setCar:(Car *)car{
    if (_car!=car) { //首先判断要赋值的变量和当前成员变量是不是同一个变量
        [_car release]; //释放之前的对象
        _car=[car retain];//赋值时重新retain
    }
}
#pragma mark  Car属性的get方法
-(Car *)car{
    return _car;
}

#pragma mark - 覆盖方法
#pragma mark 重写dealloc方法
-(void)dealloc{
    NSLog(@"Invoke Person(%@) dealloc method.",self.name);
    [_car release];//在此释放对象，即使没有赋值过由于空指针也不会出错
    [super dealloc];
}
@end

