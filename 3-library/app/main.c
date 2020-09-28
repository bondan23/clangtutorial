#include <stdio.h>
#include "balance.h"
#include "transfer.h"

/// Angled Bracket Tutorial
// #include <libstellar/transfer.h>

/// Hmap Tutorial
// #include <libstellar/Gold.h>

int main() {
  transfer("foo", "bar", 20);

  /// Hmap Tutorial
  // printf("my gold: %d\n", getGold());

  printf("my balance: %d\n", getBalance());
  return 0;
}