//
//  main.m
//  KCObjcTest
//
//  Created by Cooci on 2020/3/5.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    NSLog(@"锁");
    @autoreleasepool {
        NSObject *obj = [NSObject new];
        @synchronized (obj) {
            NSObject *obj123 = [NSObject new];
        }
    }
    return 0;
}
