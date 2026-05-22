#!/bin/bash
clear
	echo "Usuarios:"
	echo ""		
	less /etc/passwd | cut -d":" -f1
	echo ""	
	read -p "Presione Enter para volver atrás " b
	
if [ -z $b ]; then
clear
	echo "Volviendo al menú principal.."
sleep 3
	./menu.sh

else

clear
	echo "Volviendo al menú principal.."
sleep 3
	./menu.sh
fi