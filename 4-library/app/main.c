#include <stdio.h>
#include "../libstellar/balance.h"
#include "../libstellar/transfer.h"

int main() {
  transfer("foo", "bar", 20);
  printf("my balance: %d\n", getBalance());
  return 0;
}