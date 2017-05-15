#!/bin/bash

clear
temph=`date | cut -c 18-20`
echo $temph
if [ $temph -le 12 ]; then

  mess="bonjour $USERNAME ,  passer une bonne journée"

  #statements
fi

if [ $temph -gt 12 -a $temph -le 16 ]; then

  mess="bonne apré midi $USERNAME "
  #statements
fi

if [ $temph -gt 16 -a $temph -le 18 ]; then
  #statements
  mess="bonsoir $USERNAME"
fi

if which dialog > /dev/null
then
  dialog --backtitle "script shell linux"\
         --title"(-:soyer les bienvenu:-)"\
         --infobox"\n $mess \n nous somme le $dat"

echo -n "appuyer sur une touche"
read
clear

else
  echo -e
  echo "  *************************"
  echo -e
  echo -e "$mess \n nous somme le `date`"
  echo -e
  echo "*******************"
fi
