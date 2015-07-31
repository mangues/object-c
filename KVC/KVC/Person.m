//
//  Person.m
//  KVC
//
//  Created by TTS on 15/7/30.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - 公共方法
#pragma mark 显示人员信息
-(void)showMessage{
    NSLog(@"name=%@,age=%d",_name,_age);
}
@end
