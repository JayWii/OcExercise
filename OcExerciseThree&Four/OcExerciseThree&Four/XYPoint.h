//
//  XYPoint.h
//  OcExerciseThree&Four
//
//  Created by Cooper on 15/10/12.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
{
    int x;
    int y;
}
@property(nonatomic,assign)int x;
@property(nonatomic,assign)int y;
- (void)setX:(int)xValue y:(int)yValue;
- (void)print;
@end

