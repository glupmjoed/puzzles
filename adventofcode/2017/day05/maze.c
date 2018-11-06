#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  size_t len;
  scanf("%d", &len);
  int i, *a = malloc(sizeof(int)*len);
  for (i = len-1; scanf("%d", a+i) == 1; i--);
  for (int *p = a; (p+=(argc>1 && *p>=3?(*p)--:(*p)++)) >= a && p < a+len; i++);
  printf("%d\n", i+2);
}
