#include <stdio.h>
int b, d, h;
int main() {
  for (b = 106500; b <= 106500+17000; b += 17) {
    for (d = 2; d < b; d++) {
      if (b % d) continue;
      h++;
      break;
    }
  }
  printf("h: %d\n", h);
}
