#include <stdio.h>

int my_err(char *msg, int ret)
{
  fprintf(stderr, "%s\n", msg);
  return ret;
}

int main(int ac, char **av)
{
  FILE *f;
  int val;

  if (ac != 2)
    return my_err("Usage : ./a.out file", 1);
  if (!(f = fopen(av[1], "r+")))
    return my_err("Error : fopen failed", 2);

  fscanf(f, "%d", &val);
  fseek(f, 0, 0);
  fprintf(f, "%d\n", val + 1);
  
  fclose(f);
  return 0;
}


