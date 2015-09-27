//
//  main.m
//  OcExerciseTwo
//
//  Created by Cooper on 15/9/26.
//  Copyright (c) 2015年 Jason_NJUPT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myarray;
        NSDate *aDate = [NSDate distantFuture];
        NSString *aString = @"a string";
        NSNumber *aValue = [NSNumber numberWithInt:5];

        myarray = [NSArray arrayWithObjects:aDate,aString, nil];
        NSLog(@"进行添加移除前对象的引用计数值分别为:\n aValue添加前:%lu,aString移除前:%lu",[aValue retainCount]);

    }
    return 0;
}
