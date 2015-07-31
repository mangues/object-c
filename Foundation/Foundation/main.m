//
//  main.m
//  Foundation
//
//  Created by TTS on 15/7/30.
//  Copyright (c) 2015年 TTS. All rights reserved.
//

#import <Foundation/Foundation.h>
///常用的结构体有NSRange、NSPoint、NSSize、NSRect等
/*NSRange表示一个范围*/
void test1(){
    NSRange rg = {3,5}; //第一参数是起始位置第二个参数是长度
    NSRange rg2 = NSMakeRange(3, 5);
    NSRange rg3;
    rg3.location = 3;
    rg3.length = 5;
    
    NSRange rg4 = {.location = 3,.length = 5};
    
  //打印NSRange可以使用Foundation中方法
     NSLog(@"rg is %@", NSStringFromRange(rg));
     NSLog(@"rg2 is %@", NSStringFromRange(rg2));
     NSLog(@"rg3 is %@", NSStringFromRange(rg3));
     NSLog(@"rg4 is %@", NSStringFromRange(rg4));
    //注意不能直接NSLog(@"rg2 is %@", rg2)，因为rg2不是对象（准确的说%@是指针）而是结构体
    
    
}
/*NSPoint表示一个点*/
void test2(){
    NSPoint p =NSMakePoint(10,  15);//NSPoint其实就是CGPoint
    //这种方式比较常见
    NSPoint p2=CGPointMake(10, 15);
    
    CGPoint p3 = CGPointMake(10, 15);
    NSLog(@"point is %@",NSStringFromPoint(p2));
    
}

/*NSSize表示大小*/
void test3(){
    NSSize s=NSMakeSize(10, 15);//NSSize其实就是CGSize
    //这种方式比较常见
    CGSize s2=CGSizeMake(10, 15);
    
    NSSize s3 = CGSizeMake(190, 15);
    
    NSLog(NSStringFromSize(s2));
}

/*NSRect表示一个矩形*/
void test4(){
    NSRect r=NSMakeRect(10, 5, 100, 200);//NSRect其实就是CGRect
    //这种方式比较常见
    NSRect r2=CGRectMake(10, 5, 100, 200);
    
    CGRect r3 = CGRectMake(10, 20, 300, 400);
    NSLog(NSStringFromRect(r2));
}



//时间
void date1(){
    NSDate *date1 = [NSDate date];   //获得当前日期
    NSLog(@"%@",date1);//结果：2014-07-16 07:25:28 +0000
    
    //在当前日期的基础上加上100秒，注意在ObjC中多数时间单位都是秒
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:100];
    NSLog(@"%@",date2);//结果：2014-07-16 07:27:08 +0000
    
    // 随机获取一个将来的日期
    NSDate *date3 = [NSDate distantFuture];
    NSLog(@"%@",date3); //结果：4001-01-01 00:00:00 +0000
    
    //时间之差  返回秒
     NSTimeInterval time = [date2 timeIntervalSinceDate:date3];
     NSLog(@"%f",time); //结果：100.008833
    
    NSDate *date5=[date1 earlierDate:date3];//返回比较早的日期
    NSLog(@"%@",date5); //结果：2014-07-16 07:25:28 +0000
    
    //日期格式化
    NSDateFormatter *formate = [[NSDateFormatter alloc] init];
    formate.dateFormat = @"yy-mm-dd hh:mm:ss";
    NSString *datestr1 = [formate stringFromDate:date1];
    NSLog(@"%@",datestr1);
    
    //字符串转化为日期
    NSDate * date6 = [formate dateFromString:@"14-02-14 11:12:47"];
    NSLog(@"%@",date6);
  
    
    
}

//字符串初始化
void string1(){
    char *str1="C string";//这是C语言创建的字符串
    NSString *str2 = @"mangues";     //不需要主动释放内存
    
    //下面的创建方法都应该释放内存
    NSString *str3=[[NSString alloc] init];
    str3=@"OC string";
    NSString *str4 = [[NSString alloc] initWithString: @"mangues2"];
    
    NSString *str5 = [[NSString alloc] initWithFormat: @"age is %i,name is %.2f",19,1.72f];
    
    NSString *str6=[[NSString alloc] initWithUTF8String:"C string"];//C语言的字符串转换为ObjC字符串
    
    NSString *str7 = [NSString stringWithFormat:@"mangues5"];
}
//字符串的大小写操作
void string2(){
    NSString *str = @"Mangues Hello";
    NSString *str2 = [[NSString alloc] initWithFormat:@"mangues is %@",@"world"];
    NSLog(@"Mangues Hello uppercase is %@", [str uppercaseString]);    //全部大写
    NSLog(@"Mangues Hello lowercase is %@", [str lowercaseString]);   //全部小写
    NSLog(@"Mangues Hello capitalize is %@", [str2 capitalizedString]);   //首字母大写，其他小写
    
}

void string3(){
    NSString *str = @"mangues world";
    NSString *str2 = @"mangues World";
    BOOL result = [str isEqualToString:str2];
    NSLog(@"%i",result);    //结果为0 不相等，区分大写小写
    
    NSComparisonResult result2 = [str1 compare str2];
    
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        test1();
//        test2();
//        test3();
//        test4();
//        NSLog(@"************************以下为date**********************");
//        date1();
        
        
        
        string2();
        string3();
        
        
    }
    return 0;
}
