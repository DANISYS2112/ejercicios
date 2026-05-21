#!/bin/bash
menu(){
clear
echo Menu de inicio
echo 1- Cargar datos
echo 2- Mostrar datos
echo 3- Buscar un dato 
echo 4- eliminar datos asociados 
echo 5- modificar
echo 6- eliminar todos los datos
echo 7- salir
read op
case $op in
1)cargar;;
2)listar;;
3)buscar;;
4)eliminar;;
5)modificar;;
6)eliminartodo;;
7)salir;;
*)echo "opcion inválida";;
esac
}
cargar(){
clear
echo "ingrese ci: "
read ci
read -p "Ingrese nombre: " nom
read -p "Ingrese apellido: " ape
echo guardando datos...
sleep 2
echo $nom : $ape : $ci >> datos.txt
menu
}
listar(){
echo "Los datos ingresados son: "
cat datos.txt
sleep 5
menu
}
buscar(){
read -p "Ingrese CI a buscar: " ci
grep $ci datos.txt
sleep 3
menu
}
eliminar(){
read -p "Ingrese dato a eliminar" eli
grep -v $eli datos.txt>datos1.txt
mv datos1.txt datos.txt
echo "eliminando datos..."
sleep 2
menu
}
modificar(){
read -p "Ingrese dato a modificar..." mod
grep -v $mod datos.txt>datos1.txt
mv datos1.txt datos.txt
echo "modificando datos ..."
sleep 2
cargar
}
eliminartodo(){
echo "eliminando datos..."
rm -rf datos.txt
sleep 3
menu
}
salir(){
echo "saliendo del programa..."
sleep 2
exit
}
menu
