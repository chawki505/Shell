#!/bin/bash

#condition
echo -n "Voulez vous voir la liste des fichier Y/N : "
read ouinon
if [ $ouinon = "y" ] || [ $ouinon = "Y" ]; then
  echo "Liste des fichie : "
  ls -la
elif [ $ouinon = "n" ] || [ $ouinon = "N" ]; then
  echo "by by !"
else
  echo "il faut taper Y, y, N, n et nom $ouinon"
fi
