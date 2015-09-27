//
//  Fraction.h
//  OcExerciseOne
//
//  Created by B13041328 on 15/9/25.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject{
    int numerator;
    int denominator;
}

@property int numerator,denominator;

- (NSString*)print;

- (void)add: (Fraction*) fr1 to: (Fraction*) fr2;

- (void)simplify;

- (instancetype)initWithNumertor:(int)fNumerator
                     denominator:(int)fDenominator;

@end
