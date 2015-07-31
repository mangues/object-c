//
//  Person.h
//  KVC
//
//  Created by TTS on 15/7/30.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Account;

@interface Person : NSObject{
@private
    int _age;
}
#pragma mark - 属性
#pragma mark 姓名
@property (nonatomic,copy) NSString *name;
#pragma mark 账户
@property (nonatomic,retain) Account *account;

#pragma mark - 公共方法
#pragma mark 显示人员信息
-(void)showMessage;
@end
