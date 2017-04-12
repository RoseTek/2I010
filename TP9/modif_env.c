#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

//un appel avec system cree un processus
//les processus crees héritent de l'environnement qu'on a modifié
int main()
{
  printf("%d: %s\n", getpid(), getenv("TOTO"));
  setenv("TOTO","42",1);
  /* printf("%d: %s\n", getpid(), getenv("TOTO")); */
  system("echo $$: $TOTO");
  system("xterm &");
  return 0;
}
