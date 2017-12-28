#include <stdio.h>
int a, b, c, d, e, f, g, h;
int main() {
    a = 1;
    b = 65;         // "set b 65"
    c = b;          // "set c b"
    if (a) goto L1; // "jnz a 2"
    goto L2;        // "jnz 1 5"
L1: b *= 100;       // "mul b 100"
    b -= -100000;   // "sub b -100000"
    c = b;          // "set c b"
    c -= -17000;    // "sub c -17000"
L2: f = 1;          // "set f 1"
    d = 2;          // "set d 2"
L5: e = 2;          // "set e 2"
L4: g = d;          // "set g d"
    g *= e;         // "mul g e"
    g -= b;         // "sub g b"
    if (g) goto L3; // "jnz g 2"
    f = 0;          // "set f 0"
L3: e -= -1;        // "sub e -1"
    g = e;          // "set g e"
    g -= b;         // "sub g b"
    if (g) goto L4; // "jnz g -8"
    d -= -1;        // "sub d -1"
    g = d;          // "set g d"
    g -= b;         // "sub g b"
    if (g) goto L5; // "jnz g -13"
    if (f) goto L6; // "jnz f 2"
    h -= -1;        // "sub h -1"
L6: g = b;          // "set g b"
    g -= c;         // "sub g c"
    if (g) goto L7; // "jnz g 2"
    goto END;       // "jnz 1 3"
L7: b -= -17;       // "sub b -17"
    goto L2;        // "jnz 1 -23"
END:
    printf("h: %d\n", h);
}
