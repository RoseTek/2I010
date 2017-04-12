#! /bin/bash
#usager.sh

echo "Arrivee de l'usager $$"
source ./prendre_ressource.sh /tmp/$USER/nb_cabines
source ./prendre_ressource.sh /tmp/$USER/nb_paniers
source ./rendre_ressource.sh /tmp/$USER/nb_cabines
echo "Usager $$ se baigne"
sleep 2
source ./prendre_ressource.sh /tmp/$USER/nb_cabines
source ./rendre_ressource.sh /tmp/$USER/nb_paniers
source ./rendre_ressource.sh /tmp/$USER/nb_cabines
echo "Fin de $$"
