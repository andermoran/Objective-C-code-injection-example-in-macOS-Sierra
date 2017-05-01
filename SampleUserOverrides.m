#import "SampleUserOverrides.h"
#include <stdio.h>
#include <objc/runtime.h>
#include <Foundation/Foundation.h>

static IMP sOriginalImp = NULL;
 
@implementation SampleUserOverrides
 
+(void)load {
	Class originalClass = NSClassFromString(@"SampleUser");
	Method originalMeth = class_getInstanceMethod(originalClass, @selector(getName));
	sOriginalImp = method_getImplementation(originalMeth);
	 
	Method replacementMeth = class_getInstanceMethod(NSClassFromString(@"SampleUserOverrides"), @selector(patchedGetName));
	method_exchangeImplementations(originalMeth, replacementMeth);
}
-(NSString *)patchedGetName {
	return @"Alan Turing";
}
@end