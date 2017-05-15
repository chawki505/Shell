#!/bin/bash

echo " donner un nombre : "
read nombre

let "somme=0"
while [ $nombre -ne 0 ]; do
  #statements
  let "var1=$nombre % 10"
  let "somme=$somme +  $var1"
  let "nombre=$nombre / 10"
done

echo "la somme est : $somme"
