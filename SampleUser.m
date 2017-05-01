#import "SampleUser.h"

@implementation SampleUser
-(void)setAge:(NSInteger)a {
	age = a;
}
-(void)setName:(NSString *)n {
	name = n;
}
-(NSInteger)getAge {
	return age;
}
-(NSString *)getName {
	return name;
}
@end