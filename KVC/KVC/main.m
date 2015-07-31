//
//  main.m
//  KVC
//
//  Created by TTS on 15/7/30.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Account.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [[Person alloc]init];
    [p1 setValue:@"mangues" forKey:@"name"];
    [p1 setValue:@28 forKey:@"age"];
    [p1 showMessage];
    NSLog(@"person1's name is :%@,age is :%@",p1.name,[p1 valueForKey:@"age"]);
    Account *account1=[[Account alloc]init];
    p1.account=account1;//注意这一步一定要先给account属性赋值，否则下面按路径赋值无法成功，因为account为nil，当然这一步骤也可以写成:[person1 setValue:account1 forKeyPath:@"account"];
    
    [p1 setValue:@100000000.0 forKeyPath:@"account.balance"];
    
    NSLog(@"person1's balance is :%.2f",[[p1 valueForKeyPath:@"account.balance"] floatValue]);
    //结果：person1's balance is :100000000.00
    [p1 release];
    p1 = nil;
    [account1 release];
    account1=nil;
    
     return 0;
    

}
