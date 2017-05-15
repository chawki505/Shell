#!/bin/bash


#fonction d'affichage du nombre max
max_num(){
  declare tab=($1 $2 $3)
  max=$1
  for (( i = 1; i < ${#tab[@]}; i++ )); do
    if [[ ${tab[i]} -gt max  ]]; then
      max=${tab[i]}
    fi
  done
  echo "max = $max"
}



declare tab=( 35 1 3 14 20 )
echo "AVANT: "
echo ${tab[*]}

#trie a bulle
for (( i=0; i < ${#tab[@]}; i++ ))
do
    for (( j=($i+1); j < ${#tab[@]}; j++ ))
    do
        if [ ${tab[j]} -le ${tab[i]} ]
        then
            tampon=${tab[i]}
            tab[i]=${tab[j]}
            tab[j]=$tampon
        fi
    done
done

echo "APRES: "
echo ${tab[*]}


valeur="false"
while  [ $valeur != "true" ] ; do
  num1=$[($RANDOM % ($[4 - 0] + 1)) + 0]
  num2=$[($RANDOM % ($[4 - 0] + 1)) + 0]
  num3=$[($RANDOM % ($[4 - 0] + 1)) + 0]
  if [ $num1 -ne $num2 ] && [ $num1 -ne $num3 ] && [ $num2 -ne $num3 ]; then
    valeur="true"
  fi
done

echo "le nombre max entre les valeurs  tab($num1)=${tab[$num1]} , tab($num2)=${tab[$num2]} , tab($num3)=${tab[$num3]}"
max_num ${tab[$num1]}  ${tab[$num2]}  ${tab[$num3]}
exit 0
