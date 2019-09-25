#import <CoffeeKit/CoffeeKit.h>

int main() {
  CoffeeMaker *coffeeMaker = [[CoffeeMaker alloc] init];
  [coffeeMaker brew];
  return 0;
}

// clang -c -F ThirdParty/ main.m
// ld main.o -framework Foundation -F ThirdParty/ -framework CoffeeKit <- linker