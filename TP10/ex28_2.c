#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <unistd.h>

/* programme séparé en sous fonctions pour plus de clarté */

void petitfils(int id, int pere)
{
  int pid;
  
  pid = fork();
  if (pid == 0)
    {
      printf("PETIT FILS %d_%d\t%d\n", pere, id, getpid());
      sleep(10);
      exit(0);
    }
}

void fils(int id)
{
  int pid;
  int cpt = 0;
  int i;
  
  pid = fork();
  if (pid == 0)
    {
      printf("FILS %d\t\t%d\n", id, getpid());
      for (i=0 ; i<3 ; i++)
	petitfils(i, id);
      sleep(10);
      for (i=0 ; i<3 ; i++)
	wait(); // attente des petits fils
      exit(0);
    }
}

int main()
{
  int i;

  printf("PERE\t\t%d\n", getpid());
  for (i=0 ; i<3 ; i++)
    fils(i);
  for (i=0 ; i<3 ; i++) // attente des fils
    wait();
}
