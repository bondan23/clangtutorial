// #include "../libstellar/balance.h"
// #include "../libstellar/transfer.h"
// It using -IGold.hmap
#include <stdio.h>
#include "balance.h"
#include <libstellar/transfer.h>
#include <libstellar/Gold.h>

int main() {
  transfer("foo", "bar", 20);
  printf("my gold: %d\n", getGold());
  printf("my balance: %d\n", getBalance());
  return 0;
}

// clang -c -I libstellar/ app/main.c  <- with -I we doesn't need to
// expose real path of its header
// #include "../libstellar/balance.h" & #include "../libstellar/transfer.h"
// clang app/main.c libstellar/balance.c libstellar/transfer.c libstellar/source/Gold.c -I . -I libstellar/ -I libstellar/Gold.hmap 