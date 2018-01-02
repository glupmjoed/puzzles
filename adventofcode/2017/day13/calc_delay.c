#include <stdlib.h>
#include <stdio.h>

int main() {
  size_t lay2;
  scanf("%d", &lay2); lay2 <<= 1;
  int *a = malloc(sizeof(int)*lay2);
  for (int i = lay2; scanf("%d: %d", a+--i, a+--i) == 2;);
  int delay = 0;
  for (int caps = 1; caps > 0; delay++)
    for (int i = caps = 0; i < lay2; i+=2) (a[i+1]+delay)%(a[i]*2-2) ? : caps++;
  printf("%d\n", --delay);
}
