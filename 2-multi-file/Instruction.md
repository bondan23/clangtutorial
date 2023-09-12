// clang file.c -> executable
// clang -c file.c -> object file | compilation
// clang a.o b.o c.o | linking
// static library: libtool -static a.o b.o c.o -o libFoo.a
// static library: libtool -dynamic a.o b.o c.o -o libFoo.dylib