Write an assembly language that corresponds to the following C program.

```c
#include <stdio.h> 
int n, m;
int Sum(int num, int amount){ 
  const int data = 100; 
  sum = num%4 + amount/4 + data; 
  return sum; 
} 

int main() { 
  scanf(“%d %d”, &n, &m); 
  printf(“sum = %d\n”, Sum(n, m)); 
  return 0; 
}
```
