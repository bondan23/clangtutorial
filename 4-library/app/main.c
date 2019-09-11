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