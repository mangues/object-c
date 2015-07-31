
//
//  Car.m
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import "Car.h"

@implementation Car

#pragma mark - 公共方法
#pragma mark 运行方法
-(void)run{
    NSLog(@"Car(%@) run.",self.no);
}

#pragma mark - 覆盖方法
#pragma mark 重写dealloc方法
-(void)dealloc{
    
    NSLog(@"Invoke Car(%@) dealloc method.",self.no);
    [super dealloc];
}
@end