#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <unistd.h>

/* trop rapide lors de la creation des processus fils :
*** le rand() donne toujours la même valeur
*** corrigé si on ajoute un sleep au pere entre chaque creation de fils
*** mais ce n'est pas ce qu on veut
*** durees differentes definies
 */
int main()
{
  int i;
  int ret;
  int pid;
  int duree[3] = {3, 5, 2};

  printf("PERE : %d\n", getpid());
  for (i=0 ; i<3 ; i++)
    {
      pid = fork();
      if (!pid) //fils
	{
	  sleep(duree[i]);
	  return 0;
	}
      else
	printf("Processus créé %d\n", pid);
    }
  for (i=0 ; i<3 ; i++)
    {
      ret = wait();
      printf("Mort du processus fils %d\n", ret);
    }
  printf("Tous les fils sont morts\n");
}
