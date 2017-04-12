#include <stdio.h>
#include <unistd.h>

int main()
{
  int pid;

  pid = fork();
  if (pid == 0)
    {
      printf("Je suis le fils\n");
      sleep(6);
    }
  else
    {
      printf("Je suis le pere, mon fils a l'identifiant %d\n", pid);
      sleep(4);
    }
  return 0;
}
