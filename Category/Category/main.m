//
//  main.m
//  Category
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Extend.h"
int main(int argc, const char * argv[]) {
    NSString *name=@" Kenshin Cui ";
    name=[name stringByTrim];
    NSLog(@"I'm %@!",name); //结果：I'm Kenshin Cui!
    [name toString];     //结果：Kenshin Cui
    return 0;
}
