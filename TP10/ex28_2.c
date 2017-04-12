#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <unistd.h>

int petitfils(int count, int pere)
{
  int pid;
  
  pid = fork();
  if (pid == 0)
    {
      printf("PETIT FILS %d_%d\t%d\n", pere, count, getpid());
      sleep(10);
      exit(0);
    }
  else
    wait();
  return count+1;
}

int fils(int count)
{
  int pid;
  int tmp;
  int cpt = 0;
  int i;
  
  pid = fork();
  if (pid == 0)
    {
      printf("FILS %d\t\t%d\n", count, getpid());
      for (i=0 ; i<3 ; i++)
	{
	  tmp = petitfils(cpt, count);
	  if (tmp == -1)
	    return 0;
	  cpt = tmp;
	}
      sleep(10);
      exit(0);
    }
  else
    wait();
  return count+1;
}

int main()
{
  int count = 0;
  int i;

  printf("PERE\t\t%d\n", getpid());
  for (i=0 ; i<3 ; i++)
    count = fils(count);
  sleep(10);
}
