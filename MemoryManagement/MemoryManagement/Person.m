


//
//  Person.m
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - 覆盖方法
#pragma mark 重写dealloc方法，在这个方法中通常进行对象释放操作
-(void)dealloc{
    NSLog(@"Invoke Person's dealloc method.");
    [super dealloc];//注意最后一定要调用父类的dealloc方法（两个目的：一是父类可能有其他引用对象需要释放；二是：当前对象真正的释放操作是在super的dealloc中完成的）
}

@end