#include <stdio.h>
int b, c, d, e, f, h;
int main() {
  b = 106500;                  // Replaces lines 5, 7 and 8
  c = b + 17000;               // Replaces lines 6, 9 and 10
  while (1) {
    f = 1;
    d = 2;
    do {
      e = 2;
      do {
        if (d * e == b) f = 0; // Replaces lines 17-20
        e++;                   // Rewrite of line 21
      } while (e != b);        // Replaces lines 22-24
      d++;                     // Rewrite of line 25
    } while (d != b);          // Replaces lines 26-28
    if (!f) h++;               // Rewrite of line 29
    if (b == c) goto END;      // Replaces lines 30-32
    b += 17;                   // Rewrite of line 33
  }
END:
  printf("h: %d\n", h);
}
