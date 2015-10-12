//
//  main.m
//  OcExerciseOne&Two
//
//  Created by Cooper on 15/9/28.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //作业1.1
        Fraction *fr1 = [[Fraction alloc]initWithNumertor:1 denominator:2];
        Fraction *fr2 = [[Fraction alloc]initWithNumertor:1 denominator:4];
        Fraction *frResult = [[Fraction alloc]init];

        [frResult add:fr1 to:fr2];
        NSLog(@"%@ + %@ = %@", [fr1 print], [fr2 print], [frResult print]);
        [fr1 release];
        [fr2 release];
        [frResult release];

        //作业1.2
        Complex *com1 = [[Complex alloc]initWithReal:2 imaginary:3.5];
        Complex *com2 = [[Complex alloc]initWithReal:5 imaginary:1];
        Complex *comResult = [[Complex alloc]init];

        comResult = [com1 add:com2];
        NSLog(@"%@ + %@ = %@",com1.print,com2.print,comResult.print);

        NSMutableArray  *mymtArray;

        //作业2.1
        mymtArray = [NSMutableArray  arrayWithObject:com1];
        NSLog(@"进行添加移除前对象的引用计数值分别为: com2添加前:%lu,com1移除前:%lu",[com2 retainCount],[com1 retainCount]);
        [mymtArray addObject:com2];
        [mymtArray removeObjectAtIndex:0];
        NSLog(@"进行添加移除前对象的引用计数值分别为: com2添加后:%lu,com1移除后:%lu\n",[com2 retainCount],[com1 retainCount]);

        //作业2.2
        NSLog(@"进行替换前com2的引用计数值为: %lu ,comResult的引用计数为: %lu",[com2 retainCount],[comResult retainCount]);
        [mymtArray replaceObjectAtIndex:0 withObject:comResult];
        NSLog(@"进行替换后com2的引用计数值为: %lu ,comResult的引用计数为: %lu",[com2 retainCount],[comResult retainCount]);

        [com1 release];
        [com2 release];
        [comResult release];
        
        //作业4.3
        Fraction *fraction  = [[Fraction alloc]init];
        Complex  *complex  = [[Complex alloc]init];
        id number = [[Complex alloc]init];
        BOOL test;
        test = [fraction isMemberOfClass:[Complex class]];
        NSLog(@"表达式[fraction isMemberOfClass:[Complex class]]的返回值为：%hhd",test);
        test = [complex isKindOfClass:[NSObject class]];
        NSLog(@"表达式[complex isKindOfClass:[NSObject class]]的返回值为：%hhd",test);
        test = [complex isKindOfClass:[NSObject class]];
        NSLog(@"表达式[complex isKindOfClass:[NSObject class]]的返回值为：%hhd",test);
        test = [fraction isKindOfClass:[Fraction class]];
        NSLog(@"表达式[fraction isKindOfClass:[Fraction class]]的返回值为：%hhd",test);
        test = [fraction respondsToSelector:@selector(print)];
        NSLog(@"表达式[fraction respondsToSelector:@selector(print)]的返回值为：%hhd",test);
        test = [complex respondsToSelector:@selector(print)];
        NSLog(@"表达式[complex respondsToSelector:@selector(print)]的返回值为：%hhd",test);
        test = [Fraction instancesRespondToSelector:@selector(print)];
        NSLog(@"表达式[Fraction instancesRespondToSelector:@selector(print)]的返回值为：%hhd",test);
        test = [number respondsToSelector:@selector(print)];
        NSLog(@"表达式[number respondsToSelector:@selector(print)]的返回值为：%hhd",test);
        test = [number isKindOfClass:[Complex class]];
        NSLog(@"表达式[number isKindOfClass:[Complex class]]的返回值为：%hhd",test);
        test = [number respondsToSelector:@selector(release)];
        NSLog(@"表达式[number respondsToSelector:@selector(release)]的返回值为：%hhd",test);
        [fraction release];
        [complex release];
        [number release];
        
    }
    return 0;
}