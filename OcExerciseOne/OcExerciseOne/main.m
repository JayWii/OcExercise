//
//  main.m
//  OcExerciseOne
//
//  Created by B13041328 on 15/9/25.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fraction *fr1 = [[Fraction alloc]initWithNumertor:1 denominator:2];
        Fraction *fr2 = [[Fraction alloc]initWithNumertor:1 denominator:4];
        Fraction *frResult = [[Fraction alloc]init];

        [frResult add:fr1 to:fr2];
        NSLog(@"%@ + %@ = %@", [fr1 print], [fr2 print], [frResult print]);

        Complex *com1 = [[Complex alloc]initWithReal:2 imaginary:3.5];
        Complex *com2 = [[Complex alloc]initWithReal:5 imaginary:1];
        Complex *comResult = [[Complex alloc]init];

        comResult = [com1 add:com2];
        NSLog(@"%@ + %@ = %@",com1.print,com2.print,comResult.print);
        
    }
    return 0;
}
