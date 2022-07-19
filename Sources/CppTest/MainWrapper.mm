#import <Foundation/Foundation.h>

#import "MainWrapper.h"
#import "main.hpp"

@implementation MainWrapper
- (NSString *) sayHello {
    HelloWorld helloWorld;
    std::string helloWorldMessage = helloWorld.sayHello();
    return [NSString
            stringWithCString:helloWorldMessage.c_str()
            encoding:NSUTF8StringEncoding];
}
@end