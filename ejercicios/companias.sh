#!/bin/bash

menu(){
clear
echo "Validación de celulares"

echo "1-Validar Celular de ANTEL"
echo "2-Validar Celular de CLARO"
echo "3-Validar Celular de Movistar"
echo "4-Validar Celular Internacional"
echo "5-Salir"
read op
case $op in
1)ancel;;
2)claro;;
3)movis;;
4)inter;;
5)salir;;
*)echo "opcion invalida"
esac
}
ancel(){
clear
read -p "Ingrese el telefono: " tel

regla='^09[1,2,8,9][0-9]{6}$'

if [[ $tel =~ $regla ]]; then

	echo "Es un numero ANTEL valido"
sleep 2
else
	echo "El numero es invalido"
sleep 2
fi
menu
}
claro(){
}
menu
