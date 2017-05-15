#!/bin/bash
i=5
while [ " $i " -ne 0 ]
do
echo -n "$i,"
i=`expr $i - 1`
  #statements
done
echo -e
x=15
y=3
z=`expr $x + $y`
echo -e "\nla somme est : "$z""

let "a=5"
let "b=6"
let "c=a*b"
echo "le produit est : "$c""

var1=15.0
var2=4.0
var3=`echo $var1 / $var2 | bc -l `
echo "$var3"
