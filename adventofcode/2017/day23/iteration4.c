#include <stdio.h>
int b, d, e, f, h;
int main() {
  for (b = 106500; b <= 106500+17000; b += 17) {
    f = 1;
    for (d = 2; d < b; d++) {   // Replaces lines 8-9 and 15-16
      for (e = 2; e < b; e++) { // Replaces lines 10-11 and 13-14
        if (d * e == b) f = 0;
      }
    }
    if (!f) h++;
  }
  printf("h: %d\n", h);
}
