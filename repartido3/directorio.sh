#!/bin/bash
echo "Seleccione una opcion: Crear(1), Listar(2), Eliminar(3)"
read opcion

case $opcion in
1)
	echo "Ingrese nombre del nuevo directorio."
	read dir
	mkdir -p "$dir"
	echo "Directorio creado."
	;;
2)
	echo "Ingrese el directorio a listar."
	read dir
	Is -1 "$dir"
	;;
3)
	echo "Ingrese el directorio a eliminar (debe estar vacio):"
	read dir
	rmdir "$dir" && echo "Directorio eliminado." || echo "El directorio no esta vacio o no existe."
	;;
	*)
	echo "Opcion invalida."
	;;
	esac

