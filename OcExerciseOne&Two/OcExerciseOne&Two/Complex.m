//
//  Complex.m
//  OcExerciseOne&Two
//
//  Created by Cooper on 15/9/28.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real = _real;
@synthesize imaginary = _imaginary;

- (instancetype)initWithReal:(double)cReal imaginary:(double)cImaginary{
    self = [super init];
    if (self) {
        _real = cReal;
        _imaginary = cImaginary;
    }
    return self;
}

- (Complex*)add:(Complex *)_complex{
    Complex *result = [[Complex alloc]init];
    result.real = _complex.real + _real;
    result.imaginary = _complex.imaginary + _imaginary;
    return  result;
}

- (NSString*)print{
    return [NSString stringWithFormat:@"(%.1f + %.1fi)",_real,_imaginary];
}

@end