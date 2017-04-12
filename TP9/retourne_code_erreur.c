#include <stdio.h>

int main(int ac, char **av)
{
  int i;
  
  if (ac != 3)
    {
      printf("Usage : %s param1 param2\n", av[0]);
      return 1;
    }
  for (i=1; i<ac ; i++)
    printf("%s\n", av[i]);
  return 0;
}
