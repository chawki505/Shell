#! /bin/bash


if test $# = 3
then
  case $2 in
    +) let z=$1+$3 ;;
    -) let z=$1+$3 ;;
    /) let z=$1/$3 ;;
    x|X) let  z=$1*$3;;
    *) echo "erreur uniquement les opererateurs +,-,/, et x sont valide"
    exit;;
  esac
  echo "le résultat est :"$z" "
else
  echo "erreur le formt générale de la commande veleur1 operateur valeur2 "
fi
exit 0
