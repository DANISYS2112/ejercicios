#!/bin/bash
clear

while [ -z "$user" ]
do
	read -p "Ingrese usuario a modificar: " user
	
	#Verifica que el usuario no haya dejado el campo vacío
	if [ -z $user ]; then
	clear
		echo -n "El campo no puede estar vacío."
	sleep 2
	clear
		
	fi
done

if [ $(cat /etc/passwd | cut -d":" -f1 | grep -w $user) = $user ]; then
clear
	echo "Modificar Usuario:"
	echo ""
	echo "1- Cambiar Nombre"
	echo "2- Cambiar Contraseña"
	echo ""
	echo "0- Volver atrás"
	echo ""
	read -p "Seleccione Opción: " x

case $x in
	1)
	clear
	
while [ -z "$newUser" ]
do
	read -p "Ingrese Nuevo Nombre: " newUser

	#Verifica que el usuario no haya dejado el campo vacío
	if [ -z $newUser ]; then
	clear
		echo -n "El campo no puede estar vacío."
	sleep 2
	clear
		
	fi
done

	sudo usermod -l $newUser $user
	fecha_actual=$(date)
		echo "(MODIFICAR:USUARIO:NOMBRE) (NUEVO USUARIO) $newUser (ANTERIOR USUARIO) $user (FECHA) $fecha_actual" >> Logs.txt
	clear
		echo "Nombre modificado correctamente.."
	sleep 3
	clear
		echo "Volviendo al menú principal.."
	sleep 3
	sh menu.sh

	;;

	2)
	clear
		echo "Ingrese Nueva Contraseña:"
		echo ""
	sudo passwd $user
	fecha_actual=$(date)
		echo "(MODIFICAR:USUARIO:CONTRASEÑA) (USUARIO) $user, (FECHA) $fecha_actual" >> Logs.txt
	clear
		echo "Volviendo al menú principal.."
	sleep 3
	sh menu.sh

	;;

	0)
	clear
	echo "Volviendo al Menú Principal.."
	sleep 3
	sh menu.sh
	
	;;

	*)
	clear
		echo "Opción incorrecta."
	sleep 3
	clear
		./modUser.sh
	;;

esac

else
	clear
		echo "El usuario ingresado no existe."
	sleep 3
	clear
		echo "Volviendo al Menú.."
	sleep 3
	clear
	sh modUser.sh
fi