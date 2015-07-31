//
//  KCButton.h
//  protocol
//
//  Created by TTS on 15/7/28.
//  Copyright (c) 2015年 TTS. All rights reserved.
//
#import <Foundation/Foundation.h>
@class KCButton;

//一个协议可以扩展另一个协议，例如KCButtonDelegate扩展了NSObject协议
@protocol KCButtonDelegate <NSObject>

@required //@required修饰的方法必须实现
-(void)onClick:(KCButton *)button;

@optional //@optional修饰的方法是可选实现的
-(void)onMouseover:(KCButton *)button;
-(void)onMouseout:(KCButton *)button;

@end

@interface KCButton : NSObject

#pragma mark - 属性
#pragma mark 代理属性，同时约定作为代理的对象必须实现KCButtonDelegate协议
@property (nonatomic,retain) id<KCButtonDelegate> delegate;

#pragma mark - 公共方法
#pragma mark 点击方法
-(void)click;

@end