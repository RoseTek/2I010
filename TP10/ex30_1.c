#include <stdio.h>

int my_err(char *msg, int ret)
{
  fprintf(stderr, "%s\n", msg);
  return ret;
}

int main(int ac, char **av)
{
  FILE *f;
  
  if (ac != 3)
    return my_err("Usage : ./a.out file value", 1);
  if (!(f = fopen(av[1], "w")))
    return my_err("Error : fopen failed", 2);
  fprintf(f, "%s\n", av[2]);
  fclose(f);
  return 0;
}
