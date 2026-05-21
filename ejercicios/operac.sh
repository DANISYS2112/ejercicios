#!/bin/bash
menu(){
clear
echo 1= SUMA
echo 2= RESTA
echo 3= MULTIPLICACIÓN 
echo 4= DIVISIÓN
read op
case $op in
1)suma;;
2)resta;;
3)multi;;
4)divi;;
*)echo "opcion incorrecta";;
esac
}
suma(){
clear
echo "Ingrese primer numero"
read num1
echo "Ingrese segundo numero"
read num2
suma=$((num1+num2))
echo "El resultado de la suma es :" $suma
sleep 4
menu
}

divi(){
echo realizar div
read -p "ingrese primer numero= " num1 
read -p "ingrese segundo numero= " num2 
if [$num2 == [0]]; then
echo "no se puede dividir entre 0"
else
div=$(($num1/$num2))
echo "division" $div
sleep 3
fi
menu
}
menu
