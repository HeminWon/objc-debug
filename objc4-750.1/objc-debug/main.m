//
//  main.m
//  objc-debug
//
//  Created by 王明海 on 2019/3/16.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "TestObject.h"
#import "TestObject+Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TestObject *obj = [[TestObject alloc] init];
        obj.name = @"dzb";
        
        NSLog(@"%@",obj.name);
    }
    return 0;
}
