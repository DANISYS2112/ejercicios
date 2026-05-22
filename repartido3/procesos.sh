#!/bin/bash
echo "Seleccione una opcion: Listar procesos(1), Terminar proceso(2), Procesos con alto consumo(3)"
read opcion


case $opcion in
	1)
	ps -u $(whoami)
	;;
	2)
	echo "Ingrese PID del proceso a terminar."
	read pid
	kill "$pid" &&echo "Proceso terminado." || echo "Error al terminar el proceso."
	;;
	3)
	ps aux --sort=%mem | head -10
	;;
	*)
	echo "Opcion invalida."
	;;
esac

