#!/bin/bash
clear
read -p "Ingrese el telefono: " tel

regla='^09[1,2,8,9][0-9]{6}$'

if [[ $tel =~ $regla ]]; then

	echo "Es un numero ANCEL valido"
else
	echo "El numero es invalido"
fi
