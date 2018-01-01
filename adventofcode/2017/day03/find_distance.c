#include <stdlib.h>
#include <stdio.h>

int main() {
  int corner, square, ring = 0;
  scanf("%d", &square);
  if (square < 2) { printf("0\n"); return 0; }
  for (corner = 1; corner < square; corner += ++ring * 8);
  int idx = corner - square;
  printf("%d\n", idx/ring%2 ? ring+(idx%ring) : ring*2-(idx%ring));
}
