//
//  Person.h
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

#pragma mark - 属性
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int age;

@end
