#!/bin/bash
clear
echo "Menú Gestión de Procesos"
echo ""
echo "1 -Listar Todos los procesos"
echo "2 -Listar ultimos 3  procesos"
echo "3 -Listar primeros 3 procesos"
echo "4 -Salir"
echo "5 -Asignar todos los permisos a los ficheros"
echo "proc.sh - ult.sh - pri.sh" 
read -p "Seleccione opción: " op
case $op in
	1)sh	proc.sh;;
	2)sh	ult.sh;;
	3)sh	pri.sh;;
	4)exit;;
	5)sh 	permisos.sh;;
	*)clear
	echo "Opción Incorrecta"
	sleep 2
	sh procesos.sh;;
esac
