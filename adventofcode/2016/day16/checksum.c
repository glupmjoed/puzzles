#include <stdio.h>
#include <string.h>

int depth, n, length;
char **state;

// generate next interjection character
int interject() {
  static int m = 0;
  static int i = 0;
  int idx = ++i & -i;
  if (m & idx) {
    m &= ~idx;
    return 1;
  } else {
    m |= idx;
    return 0;
  }
}

// generate next fill data character
int fill() {
  static int i = 0;
  static int dir = 1;
  if (i < n) return state[dir][i++];
  i = 0;
  dir ^= 0x3;
  return interject();
}

int checksum(int depth) {
  if (depth < 1) return fill();
  int sum1 = checksum(depth-1);
  int sum2 = checksum(depth-1);
  return (sum1 + sum2 + 1) & 1;
}

int main(int argc, char** argv) {
  state = argv;
  n = strlen(state[1]);
  for (int i = 0; i < n; i++) { state[1][i] -= '0'; state[2][i] -= '0'; }
  scanf("%d", &length);
  for (int x = length; !(x&1); x >>= 1) depth++;
  for (int i = length >> depth; i > 0; i--) printf("%d", checksum(depth));
  printf("\n");
}
