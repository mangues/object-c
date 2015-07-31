//
//  main.m
//  protocol
//
//  Created by TTS on 15/7/28.
//  Copyright (c) 2015年 TTS. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "KCButton.h"
#import "MyListener.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        KCButton *button=[[KCButton alloc]init];
        MyListener *listener=[[MyListener alloc]init];
        button.delegate=listener;
        [button click];
        /* 结果：
         Invoke KCButton's click method.
         Invoke MyListener's onClick method.The button is:<KCButton: 0x1001034c0>.
         */
    }
    return 0;
}