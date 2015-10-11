//
//  Rectangle.m
//  OcExerciseThree&Four
//
//  Created by Cooper on 15/10/12.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,height;
- (void)setWidth:(int)aWidth height: (int)aHeight {
    width = aWidth;
    height = aHeight;
}

- (void)draw {
    for (int i; i<width; i++) printf("-");
    printf("\n");
    for (int i; i<height; i++) {
        printf("|");
        for (int j=0; j<(width-2); j++) printf(" ");
        printf("|");
        printf("\n");
    }
    for (int i; i<width; i++) printf("-");
    printf("\n");
}

- (void)setOriginPoint:(XYPoint*)point {
    originPoint = point;
}
- (XYPoint*)originPoint {
    return originPoint;
}

- (int)area {
    return width * height;
}
- (int)perimeter {
    return (width + height)*2;
}

@end