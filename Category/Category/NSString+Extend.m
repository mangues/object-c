//
//  NSString+Extend.m
//  Category
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)
-(NSString *)stringByTrim{
    NSCharacterSet *character= [NSCharacterSet whitespaceCharacterSet];
    return [self stringByTrimmingCharactersInSet:character];
}
-(void)toString{
    NSLog(self);
}
@end
