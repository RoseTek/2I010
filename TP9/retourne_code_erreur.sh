#! /bin/bash

gcc -o retourne_code_erreur retourne_code_erreur.c
./retourne_code_erreur "param1" "param2"
echo "Valeur de retour : $?"
./retourne_code_erreur
echo "Valeur de retour : $?"
