#!/bin/bash
menu(){
clear
echo "productos"
echo "1 cargar productos"
echo "2 calcular iva"
echo "3 limpiar factura"
echo "4 total"
echo "5 salir"
read op
case $op in
1)cargar;;
2)calc;;
3)limpiar;;
4)total;;
5)salir;;
esac
}
cargar(){
clear
echo "ingrese un producto"
read prod
total=$((prod+total))
echo desea ingresar otro producto 1=si 2=no
read opc
case $opc in
1)cargar;;
2)menu;;
esac
}
calc(){
clear
echo precio iva
iva=$(($total*22))
iva2=$((iva/100))
echo el precio del IVA es: $iva2
sleep 3
menu
}
limpiar(){
echo limpiando factura...
total=0
sleep3
menu
}
total(){
total2=$((total+iva2))
echo "el precio total con IVA es: $total2"
sleep 3
menu
}
salir(){
echo saliendo...
sleep 3
exit
}
menu
