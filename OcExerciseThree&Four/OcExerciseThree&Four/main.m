//
//  main.m
//  OcExerciseThree&Four
//
//  Created by Cooper on 15/10/12.
//  Copyright (c) 2015年 B13041328 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
#import "ClassC.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //作业3.1
        ClassB *b = [[ClassB alloc]init];
        ClassC *c = [[ClassC alloc]init];
        [b initVar];
        [b printVar];
        [c initVar];
        [c printVar];
        [b release];
        [c release];

        //作业3.2
        Rectangle *myRect = [[Rectangle alloc]init];
        [myRect setWidth:10 height:5];
        [myRect draw];
        [myRect release];

        //作业4.1
        id dataValue;
        dataValue = [[Rectangle alloc]init];
        //可见 dataValue  =  [ [Rectangle alloc]init]; 这个表达式是否合法的


        //作业4.2
        XYPoint *myXYPoint = [[XYPoint alloc]init];
        [myXYPoint setX:100 y:200];
        dataValue = myXYPoint;
        [dataValue print];


    }
    return 0;
}