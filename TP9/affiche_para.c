#include <stdio.h>

int main(int ac, char **av)
{
  int i;

  printf("Executable : %s passé avec %d parametre(s) \n", av[0], ac-1);
  for (i=1 ; i<ac ; i++)
    printf("%s\n", av[i]);
  return 0;
}
