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
    @autoreleasepool {
        dispatch_queue_t queue = dispatch_queue_create("1", DISPATCH_QUEUE_CONCURRENT);
        int i = 100;
        while (i > 0) {
            if (i==50) {
                dispatch_barrier_async(queue, ^{
                    NSLog(@"%d", i);
                });
            }
        }
        sleep(1);
    }
    return 0;
}
