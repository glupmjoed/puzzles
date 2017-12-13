#include <stdlib.h>
#include <stdio.h>

int main() {
  int corner, square, ring = 0;
  scanf("%d", &square);
  for (corner = 1; corner < square; corner += ++ring << 3);
  if (ring == 0) { printf("1\n"); return 0; }
  int idx = corner - square;
  printf("%d\n", idx/ring%2 ? ring+(idx%ring) : ring*2-(idx%ring));
}
