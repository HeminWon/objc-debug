//
//  TestObject+Test.h
//  objc-debug
//
//  Created by 王明海 on 2019/3/16.
//

#import "TestObject+Test.h"
#import <objc/runtime.h>

char *const _nameKey = "name";

@implementation TestObject (Test)

- (void)setName:(NSString *)name {
	objc_setAssociatedObject(self,&_nameKey,name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
	return (NSString *)objc_getAssociatedObject(self,&_nameKey);
}

@end
