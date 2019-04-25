#import <CoffeeKit/CoffeeKit.h>

// clang -F ThirdParty/ -framework Foundation main.m

int main() {
  CoffeeMaker *coffeeMaker = [[CoffeeMaker alloc] init];
  [coffeeMaker brew];
  return 0;
}