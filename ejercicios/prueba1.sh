#!/bin/bash

touch datos.txt

pause(){

read -p "presione una tecla para continuar..." p
menu
}
menu(){
clear
echo 1- Cargar datos
echo 2- Mostrar datos
echo 3- Salir
read op
case $op in

1)Cargar;;
2)Mostrar;;
3)Salir;;
*)echo "Opción invalida"
sleep 2
menu;;
esac
}
Cargar(){
clear
read -p "Ingrese nombre: " nom
read -p "Ingrese apellido: " ape
read -p "ingrese ci: " ci
echo "nombre: " $nom "apellido: " $ape "documento: " $ci >> datos.txt
menu
}

Mostrar(){
clear
cat /home/daniel/datos.txt
pause
menu
}
Salir(){
clear
echo "Saliendo del programa..."
sleep 3
exit
}
menu
