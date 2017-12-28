#include <stdio.h>
int a, b, c, d, e, f, g, h;
int main() {
  a = 1;
  b = 65;
  c = b;
  b *= 100;            // Since a == 1, this line and the following three lines
  b -= -100000;        // can be executed unconditionally. The lines 7-8 and
  c = b;               // label L1 from the previous iteration has been removed.
  c -= -17000;
  while (1) {          // Replaces L2
    f = 1;
    d = 2;
    do {               // Replaces L5
      e = 2;
      do {             // Replaces L4
        g = d;
        g *= e;
        g -= b;
        if (!g) f = 0; // Replaces lines 19-20, removes L3
        e -= -1;
        g = e;
        g -= b;
      } while (g);     // Replaces line 24
      d -= -1;
      g = d;
      g -= b;
    } while (g);       // Replaces line 28
    if (!f) h -= -1;   // Replaces lines 29-30, removes L6
    g = b;
    g -= c;
    if (!g) goto END;  // Replaces lines 33-34, removes L7
    b -= -17;
  }                    // Replaces line 36
END:
  printf("h: %d\n", h);
}
