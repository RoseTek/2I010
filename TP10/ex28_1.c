#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <unistd.h>

int fils(int count)
{
  int pid;
  int tmp;
  int cpt = 0;
  int i;

  pid = fork();

  if (pid == 0)
    {
      sleep(4);
      exit(0);
    }
  else
    {
      printf("FILS %d cree\n", pid);
      wait();
      printf("fils %d mort\n", pid);
    }
  return count+1;
}

int main()
{
  int count = 0;
  int i;

  printf("PERE : %d\n", getpid());
  for (i=0 ; i<3 ; i++)
    count = fils(count);
  return 0;
}
