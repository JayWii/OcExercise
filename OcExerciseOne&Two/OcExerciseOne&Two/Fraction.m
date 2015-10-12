//
//  Fraction.m
//  OcExerciseOne&Two
//
//  Created by Cooper on 15/9/28.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator = _numerator;
@synthesize denominator = _denominator;


- (NSString*)print{
    return [NSString stringWithFormat:@"%d/%d",_numerator,_denominator];
}

- (void)simplify {
    int minCycles = 0;
    minCycles = (_numerator < _denominator) ? _numerator : _denominator;
    for (int i = 2; i <= minCycles-1; ++i) {
        while (_numerator%i == 0 && _denominator%i == 0) {
            _numerator /= i;
            _denominator /= i;
        }
    }
}

- (void)add:(Fraction *)fr1 to:(Fraction *)fr2{
    _numerator = fr1.numerator*fr2.denominator + fr2.numerator*fr1.denominator;
    _denominator = fr1.denominator*fr2.denominator;
    [self simplify];
}

- (instancetype)initWithNumertor:(int)fNumerator denominator:(int)fDenominator{
    self = [super init];
    if (self) {
        _numerator = fNumerator;
        _denominator = fDenominator;
    }
    return self;
}

@end