
//
//  KCButton.m
//  Block
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//


#import "KCButton.h"


@implementation KCButton

-(void)click{
    NSLog(@"Invoke KCButton's click method.");
    if (_onClick) {
        _onClick(self);
    }
}

@end