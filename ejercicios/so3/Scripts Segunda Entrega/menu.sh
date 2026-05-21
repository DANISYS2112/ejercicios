#!/bin/bash
clear

#Verificamos si existe el fichero Logs.txt
verif_Logs="$(ls Logs.txt)"
clear
if [ -z "$verif_Logs" ]; then
	#Si no existe lo crea
	> Logs.txt
fi

echo "Menú Gestión de Usuarios: "
echo ""
echo "1- Agregar Usuario"
echo "2- Borrar Usuario"
echo "3- Modificar Usuario"
echo "4- Lista de Usuarios"
echo "5- Backup Base de Datos"
echo "6- Restauración Base de Datos"
echo ""
echo "0- Salir"
echo ""
read -p "Seleccione opción: " x
case $x in
	1)
		./addUser.sh
	;;

	2)
		./delUser.sh
	;;

	3)
		./modUser.sh
	;;
	4)
		./ListaUsuarios.sh
	;;
	5)
		./backup.sh
	;;
	6)
		./restauracion.sh
	;;

	0)
	clear
	echo "Cerrando menu.."
	sleep 1
	clear
	exit
	;;

	*)
	clear
	echo "Opción incorrecta"
	sleep 2
	clear
	./menu.sh
	;;

esac