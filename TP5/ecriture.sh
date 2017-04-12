#! /bin/bash
# ecriture.sh

if [ $# -lt 1 ]
then
  echo Il faut au moins un parametre
  exit 1
fi

echo $$ >> fic_PID
while read pid ; do
    case "$pid" in
	"$$") ;;
	*) kill -SIGSTOP $pid 2>/dev/null;;
    esac
done < fic_PID

for elem in "$@"
do
  if [ ! -e "$elem" ]
  then
      echo premier $$ > "$elem"
  else
      echo suivant $$ >> "$elem"
  fi
done

while read pid ; do
    case "$pid" in
	"$$") ;;
	*) kill -SIGCONT $pid 2>/dev/null;;
    esac
done < fic_PID

