#! /bin/bash


echo -n "voulez vous voir la liste des fichiers Y/N:"
read ouinon
if [ "$ouinon" = "y" ] || [ "$ouinon" = "Y" ] ; then
  #statements
echo "liste des fichier:"
ls -la
elif [ "$ouinon" = "n" ] || [ "$ouinon" = "N" ] ; then
  #statements
  echo "ok,bye"
else
  echo "il faut taper Y ou N pas $ouinon"
fi
