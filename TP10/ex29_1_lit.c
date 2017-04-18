#include <stdlib.h>
#include <stdio.h>

/* lit */
int main()
{
  char buff[250];

  fscanf(stdin, "%s", buff);
  printf("Chaine lue : %s\n", buff);
  return 0;
}
