#! /bin/bash

cls(){
  clear
  echo " nettoyage de l'ecran, appuyer sur une touche ..."
  read
  return
}


show_ls()
{
  ls
  echo "liste des fichiers, ppuyer sur une touche..."
  read
  return
}


star_mc (){
  if  which mc > /dev/null
  then
    echo "executer la commande mindnight, appuyer sur une touche ...."
    read
  else
    echo "erreur , le package mc n'est pas installé"
    read
  fi

  return
}

print_help(){
  echo " format d'exécution : $0 -c -d -m";
  echo "avec : -c nettoyage de l'ecran";
  echo "-d liste des fichiers du repertoire en cours"
  echo "-m execution de la fonction shell mindnight"
  return
}



if [ $# -eq 0 ]
then
print_help
exit 1
fi
while getopts "cdm" opt ; do
  case "$opt" in
    c) cls ;;
    d) show_ls ;;
    m) star_mc ;;
    \?)  print_help ; exit 1 ;;
  esac


  #statements
done
