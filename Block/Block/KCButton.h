//
//  KCButton.h
//  Block
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KCButton;
typedef void(^KCButtonClick)(KCButton *);

@interface KCButton : NSObject

#pragma mark - 属性
#pragma mark 点击操作属性
@property (nonatomic,copy) KCButtonClick onClick;
//上面的属性定义等价于下面的代码
//@property (nonatomic,copy) void(^ onClick)(KCButton *);

#pragma mark - 公共方法
#pragma mark 点击方法
-(void)click;
@end