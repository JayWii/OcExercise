//
//  Rectangle.h
//  OcExerciseThree&Four
//
//  Created by Cooper on 15/10/12.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject{
    int width;
    int heigh;
    XYPoint *originPoint;
}

@property(nonatomic,assign)int width;
@property(nonatomic,assign)int height;

- (void)setOriginPoint:(XYPoint*)point;
- (XYPoint*)originPoint;
- (void)setWidth:(int)aWidth height: (int)aHeight;
- (void)draw;
- (int)area;
- (int)perimeter;

@end
