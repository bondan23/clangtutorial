#import <Foundation/Foundation.h>

int main() {
  NSLog(@"hello world");

  NSString *str = [@"foo " stringByAppendingString:@"bar"];
  
  NSLog(@"yo %@", str);
  
  return 0;
}