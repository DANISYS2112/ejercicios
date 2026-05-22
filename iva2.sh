#!/bin/bash
menu(){
clear
echo producto
echo 1 cargar precios
echo 2 calcular iva
echo 3 total
echo 4 salir
read op
case $op in
1)cargar;;
2)calciva;;
3)total;;
4)salir;;
*)echo "opcion incorrecta";;
esac
}
cargar(){
clear
echo ingrese un precio
read prod
total=$((prod+total))
echo desea ingresar otro precio 1=si 2=no
read opc
case $opc in
1)cargar;;
2)menu;;
esac
}
calciva(){
clear
echo el iva es 
regla1=$(($total*22))
iva=$(($regla1/100))
echo el precio del iva es $iva
sleep 3
menu
}
total(){
precioiva=$(($total+$iva))
echo "el total es $precioiva"
sleep 3
menu
}
salir(){
echo "saliendo del programa..."
sleep 3
exit
}
menu
