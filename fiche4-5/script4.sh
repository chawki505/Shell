#!/bin/bash

#tab

clear
declare tab=("John" "Jane" "Peter" "Tom")
taille=${tab[@]}
echo $taille
echo ${tab[2]}
echo ${tab[@]}
touch fich.txt
for (( i = 0; i < ${#tab[@]}; i++ )); do
  echo "le $(($i+1)) est l'element : ${tab[$i]}" >> fich.txt;

done
cp fich.txt fich
rm fich.txt
echo -e "le resulta est "
cat fich
