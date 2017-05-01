#import <Foundation/Foundation.h>

@interface SampleUser : NSObject {
	NSString *name;
	NSInteger age;
}
-(void)setAge:(NSInteger)a;
-(void)setName:(NSString *)n;
-(NSInteger)getAge;
-(NSString *)getName;
@end