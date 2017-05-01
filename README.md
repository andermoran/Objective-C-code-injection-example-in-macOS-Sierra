# Objective-C code injection example in macOS Sierra

## What is this?

> I have tinkered with code injection on iOS and decided to dabble with code injection on macOS. I made an Objective-C class and used DYLD_INSERT_LIBRARIES for injection.

## What's going on?

> This very very basic example of code injection swizzles `-(NSString *)getName`. This is a method of the `SampleUser` class. When the executable is run normally, the output will be

`name = John Doe
age = 20`

> When the executable is run with the dynamic library injected into it, the output be

`name = Alan Turing
age = 20`

> Look inside the `SampleUserOverrides.m` file to see what the new method does :)

## How do I run this?

> To compile the executable

`gcc -fobjc-arc -framework Foundation -o SampleUserTester SampleUserTester.m SampleUser.m`

> To create the dynamic library for injection

`gcc -framework Foundation -o SampleUserOverrides.dylib -dynamiclib SampleUserOverrides.m`

> To run the executable and inject the dynamic library 

`DYLD_INSERT_LIBRARIES=/PATH/TO/SampleUserOverrides.dylib ./SampleUserTester`

## Need more info?
Check out [Timac's article](http://blog.timac.org/?p=761) for a more in depth explanation of what is going on.