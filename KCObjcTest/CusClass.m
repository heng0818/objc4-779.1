//
//  CusClass.m
//  
//
//  Created by 张恒 on 2020/4/27.
//

#import "CusClass.h"

@implementation CusClass {
    int(^block)(int);
}

- (void)func {
    __block int value = 10;
    int(^blk)(int) = ^(int num) {
        return num * value;
    };
    value = 6;
    block = blk;
    NSLog(@"result is %d", block(4));
    NSLog(@"result is %d", blk(4));
}

@end
