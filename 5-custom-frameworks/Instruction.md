## How to compile
1. clang main.m -F ThirdParty -framework CoffeeKit -framework Foundation

The Other way:
1. clang -c -F ThirdParty/ main.m
2. ld main.o -framework Foundation -F ThirdParty/ -framework CoffeeKit <- linker