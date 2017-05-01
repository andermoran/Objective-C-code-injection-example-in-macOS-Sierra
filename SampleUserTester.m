#import "SampleUser.h"

int main(int argc, char *argv[]) {
	@autoreleasepool {
		SampleUser *user1 = [[SampleUser alloc]init];
		[user1 setAge: 20];
		[user1 setName:@"John Doe"];
		
		fprintf(stdout ,"name = %s\n", [[user1 getName] UTF8String]);
		printf("age = %ld\n", [user1 getAge]);
	}
}