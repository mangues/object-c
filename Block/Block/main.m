//
//  main.m
//  Block
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KCButton.h"


int main(int argc, const char * argv[]) {
    
    KCButton *button=[[KCButton alloc]init];
    button.onClick=^(KCButton *btn){
        NSLog(@"Invoke onClick method.The button is:%@.",btn);
    };
    [button click];
    /*结果：
     Invoke KCButton's click method.
     Invoke onClick method.The button is:<KCButton: 0x1006011f0>.
     */
    
    
    return 0;
}