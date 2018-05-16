#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define BITW 8
#define SZ (1 << BITW)
#define SZM ((1 << BITW) - 1)
#define L(x) (x = (x + SZ - 1) & SZM)
#define R(x) (x = (x + 1) & SZM)

int main() {
  uint8_t *dst, *src, *tmp;
  src = malloc(sizeof(uint8_t) * SZ);
  dst = malloc(sizeof(uint8_t) * SZ);
  int i, j, len, offset, skip;
  for (i = 0; i < SZ; i++) src[i] = i;
  for (offset = skip = 0; scanf("%d", &len) == 1; offset += len + skip++) {
    j = SZ - (skip & SZM);
    for (i = 0; i < len; i++) { L(j); dst[j] = src[i]; }
    for (j = (SZ - (skip & SZM)) & SZM ; i < SZ; R(j)) dst[j] = src[i++];
    tmp = src; src = dst; dst = tmp;
  }
  offset = (SZ - (offset & SZM)) & SZM;
  for (i = 0; i < SZ; i++) { printf("%d\n", src[offset]); R(offset); }
}
