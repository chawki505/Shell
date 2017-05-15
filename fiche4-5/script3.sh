#!/bin/bash

# switch case

clear
echo
echo "################### Script ###################"
echo
echo "##############################################"
echo -n "LOGIN: "
read login
echo -n "Hote: "
read hote
echo "##############################################"
echo
echo "########### pour l'aide taper help ###########"
echo
while [ 1 ]; do
  #permet une boucle infini
  echo -n "$login@$hote :"
  #qui s'arrete avec break
  read reps

  case $reps in

    help | hlp )
      echo "A propos de TS --> about"
      echo "ls --> lite des fichier"
      echo "rm --> detruit les fichier(guide)"
      echo "rmd --> efface un dossier(guide)"
      echo "noyau --> version du noyau linux"
      echo "connect --> savoir qui s'est connecter dernierement";;

      ls )
      ls -la;;

      rm )
      echo -n "Quel fichier voulez vous effacer : "
      read eff
      rm -f $eff;;

      rmd | rmdir )
      echo -n "Quel repertoire voulez vous effacer : "
      read eff
      rm -r $eff;;

      noyau | "uname -r" )
      uname -r;;

      connect )
      last;;
      #last permet d'afficher la liste de connextion utilisateur sur une machine

      about | --v | vers )
      echo "Script simple pour l'initiation aux scripts Shell";;

      quit | "exit" )
      echo "Au revoir!!"
      break;;
      #sortire de la boucle while

      * )
      echo "commande inconnue";;

  esac
done
#fin de la boucle
exit 0
