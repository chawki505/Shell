#!/bin/bash

#fonction

effacer_creer_fichier(){
  echo "le 1er argument est : $1 "
  echo "voulez vous vraiment l'effacer ? (o/n) : "
  read reponse

  if [[ $reponse == "o" ]]; then
    rm -f $1
  fi

  echo "le 2eme argument est : $2"
  touch $2
}

echo -e "Taper le nom de votre fichier a supprimer : "
read fich1
echo -e "Taper le nom de votre fichier a creer : "
read fich2

effacer_creer_fichier $fich1 $fich2
exit 0
