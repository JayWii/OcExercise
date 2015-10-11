//
//  XYPoint.m
//  OcExerciseThree&Four
//
//  Created by Cooper on 15/10/12.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x,y;

- (void)setX:(int)xValue y:(int)yValue {
    x = xValue;
    y = yValue;
}

- (void)print{
    NSLog(@"(%i,%i)",x,y);
}
@end

