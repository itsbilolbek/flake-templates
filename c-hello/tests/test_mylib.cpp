#include "mylib.h"
#include <assert.h>
#include <stdio.h>

int main() {
  printf("Running tests...\n");

  // Call a library function and check results
  // For now, we just ensure it doesn't crash
  print_hello();

  printf("All tests passed!\n");
  return 0; // Success!
}
