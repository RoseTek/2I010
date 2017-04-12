#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

int check_number(char *str)
{
  int i;

  i = 0;
  if (str[i] != '\0' && str[i] == '-')
    i++;
  while (str[i] != '\0')
    {
      if (str[i] < '0' || str[i] > '9')
	return 1;
      i++;
    }
  return 0;
}

//atoi ne gere pas --2 = +2
int main(int ac, char **av)
{
  int a,b;
  
  if (ac != 3 || check_number(av[1]) || check_number(av[2]))
    {
      printf("Usage : %s Number Number\n", av[0]);
      return 1;
    }
  a = atoi(av[1]);
  b = atoi(av[2]);
  /* printf("%d + %d = %d\n", a, b, a+b); */
  printf("%d\n", a+b);
  return 0;
}
