#!/bin/bash

pause(){

read -p "presione una tecla para continuar" m
menu
}
menu(){
clear
echo "1-Solicitar Datos"
echo "2-Mostrar Datos"
echo "3-Buscar por CI"
echo "4-Mostrar documentos"
echo "5-Eliminar por CI"
echo "6-Mostrar Apellidos"
echo "0-Salir"



read op
case $op in
1)cargar;;
2)mostrar;;
3)buscar;;
4)docs;;
5)eliminar;;
6)mostrarA;;
0)salir;;
*)echo "ingrese opcion correcta";;
esac
}
cargar(){
clear
read -p "ingrese nombre: " nom
echo "ingrese apellido: "
read ape
read -p "ingrese documento: " doc
echo $nom:$ape:$doc >> datos1.txt
menu
}
eliminar(){
clear
read -p "ingrese ci a eliminar" ci
grep -v $ci datos1.txt>bckp.txt
echo "eliminando datos"
sleep 3
mv bckp.txt datos1.txt
clear
cat datos1.txt
sleep 5
menu
}
mostrarA(){
echo "Mostrar Apellidos"
cut -d: -f2 datos1.txt
sleep 3
menu
}




mostrar(){
clear
echo "Los datos ingresados son:"
cat datos1.txt
sleep 5
menu
}
salir(){
clear
echo "saliendo del programa..."
sleep 2
exit
}
docs(){
echo "mostrando documentos cargados en las bds"
cut -d: -f3 datos1.txt
sleep 5
menu
}

buscar(){
read -p "ingrese documento a buscar: " ci
grep  $ci datos1.txt
sleep 3
menu
}
menu

