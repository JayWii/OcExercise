//
//  Complex.h
//  OcExerciseOne
//
//  Created by B13041328 on 15/9/25.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject{
    double real;
    double imaginary;
}

@property double real,imaginary;

- (Complex*)add:(Complex*) _complex;

- (NSString*)print;

- (instancetype)initWithReal:(double) cReal
                   imaginary:(double) cImaginary;

@end
