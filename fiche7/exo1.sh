#! /bin/bash
if [ $# -ne 1 ]; then
  echo " il faut saisir le format suivant : $0 nom-fichier"
  exit 1

  #statements
fi
if [ -f $1 ]; then
  echo "le fichier $1 existe"
else
  echo "le fichier  $1 n'existe pas"
  #statements
fi
