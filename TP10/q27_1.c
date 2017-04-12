#include <stdio.h>
#include <unistd.h>

int main()
{
  int pid;

  pid = fork();
  if (pid != 0)
    {
      printf("Je suis le pere\n");
      sleep(10);
    }
  else
    {
      pid = fork();
      if (pid != 0)
	{
	  printf("Je suis le fils\n");
	  sleep(10);
	}
      else
	{
	  pid = fork();
	  if (pid != 0)
	    {
	      printf("Je suis le petit fils\n");
	      sleep(10);
	    }
	  else
	    {
	      printf("Je suis l'arriere petit fils\n");
	      sleep(10);
	    }
	}
    }
  return 0;
}
