//
//  main.m
//  MemoryManagement
//
//  Created by TTS on 15/7/29.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "People.h"
//c 语言 ，必须放在main方法上面
void Test1(){
    Person *p = [[Person alloc] init];
    p.name = @"mangues";
    p.age = 23;
    NSLog(@"returnCount=%lu",[p retainCount]);
    [p release];
    
    //上面调用过release方法，p指向的对象就会被销毁，但是此时变量p中还存放着Person对象的地址，
    //如果不设置p=nil，则p就是一个野指针，它指向的内存已经不属于这个程序，因此是很危险的
    p=nil;
    //如果不设置p=nil，此时如果再调用对象release会报错，但是如果此时p已经是空指针了，
    //则在ObjC中给空指针发送消息是不会报错的
    [p release];
    
    
}

void Test2(){
    Person *p=[[Person alloc] init];
    p.name=@"mangues";
    p.age = 23;
    NSLog(@"returnCount=%lu",[p retainCount]);
    //结果：retainCount=1
    [p retain];    //引用计数器加一
    NSLog(@"returnCount=%lu",[p retainCount]);
    //结果：retainCount=2
    
    [p release]; //调用一次release引用计数器-1
    NSLog(@"returnCount=%lu",[p retainCount]);
   //结果：retainCount=1
    
    [p release];
    //结果：Invoke Person's dealloc method.
    p=nil;
}

void getCar(People *p){
    Car *car1= [[Car alloc] init];
    car1.no = @"999999";
    
    p.car = car1;
    NSLog(@"retainCount(p)=%lu",[p.car retainCount]);
    NSLog(@"retainCount(p)=%lu",[p retainCount]);
    
    Car *car2 = [[Car alloc] init];
    car2.no = @"888888";
    
    [car1 release];
    car1 = nil;
    
    [car2 release];
    car2 = nil;
    
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Test2();
        
        People *p = [[People alloc] init];
        p.name = @"mangues";
        NSLog(@"retainCount(p)=%lu",[p retainCount]);
        
        getCar(p);
        [p.car run];
        [p release];
        p = nil;
    }
    return 0;
}


