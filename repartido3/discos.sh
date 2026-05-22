#!/bin/bash
echo "Seleccione una opcion: Espacio en discos(1), Directorios grandes(2), Generar reporte(3)"
read opcion


case $opcion in
1)
df -h
;;
2)
echo "Directorios que mas espacio ocupan."
du -sh /* 2>/dev/null;;
3)
df -h > reporte_disco.txt
echo "Reporte generado en reporte_disco.txt."
;;
*)
echo "Opcion invalida."
;;
esac
