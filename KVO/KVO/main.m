//
//  main.m
//  KVO
//
//  Created by TTS on 15/7/30.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Account.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person1=[[Person alloc]init];
        person1.name=@"Kenshin";
        Account *account1=[[Account alloc]init];
        account1.balance=100000000.0;
        person1.account=account1;
        
        account1.balance=200000000.0;//注意执行到这一步会触发监听器回调函数observeValueForKeyPath: ofObject: change: context:
        //结果：keyPath=balance,object=<Account: 0x100103aa0>,newValue=200000000.00,context=(null)
        
        
    }
    return 0;
}
