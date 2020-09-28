## For Compiling Swift file to static library
1. swiftc -emit-library -emit-object Logger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name Logger
2. ar rcs libLogger.a *.o

## For Compiling only emit Object (To avoid duplicate _main)
1. swiftc -emit-library -emit-object Logger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name Logger

## For Compiling Swift file to dynamic library
1. swiftc -emit-library Logger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name Logger

## For Compiling Swift to SwiftModule
1. swiftc -emit-module Logger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name Logger

## Notes:
We can say swiftmodule is having a same functionality as modulemap, but the one that different is, swiftmodule can only imported from swift to swift.
Where the modulemap is vice versa (Swift Objc Interop).
Modulemap is used for import any objc module to other objc module, but it also used for swift to import objc module (-import-underlying-module)

## Tutorial Compile Swift:
When we create a Logger swiftmodule, we can directly compile our main.swift
`swiftc main.swift -I customswift`
`-I` is used to determine the include search path of the module.
But when we compiled it will show us a undefined symbols (linking failed).

So what the solution for this?
we have several way to solve this.
1. we create the static library, and then compiled the main.swift with the library
    - `swiftc main.swift -I customswift/ -L customswift/ -lLogger`
2. if we doesn't want to create as a static library, we can emit the Logger.o (object), and then we compile the main.swift seperately to produce the main.o
    - `swiftc -c main.swift -o main.o`
    - `swiftc main.o customswift/Logger.o -o main`

## Tutorial Objc Interop:
Now we uncomment the line of this tutorial, and we will try to compile it
First, we need to compile the objc file, and it will produce the `Color.o`, the options to solve this compiling tutorial is pretty much the same as the above.
1. We can create the Color as static lib
2. if we doesn't want to make it as static lib, we can compiled it seperately and linked with the main.o

Now we will choose number 2.
`clang custommodule/Color.m`
`swiftc -c main.swift -I customswift/ -import-objc-header custommodule/Color.h -o newmain.o`
`swiftc newmain.o custommodule/Color.o -o newmain -L customswift/ -lLogger`