#!/bin/bash
menu(){
clear
echo "1- cargar datos clientes"
echo "2- mostrar datos clientes"
echo "3- buscar un cliente por CI"
echo "4- salir"
read op
case $op in
1)cargar;;
2)mostrar;;
3)buscar;;
4)salir;;
*)echo "opcion no valida...";;
esac
}
cargar(){
clear
echo "Ingrese su nombre"
read nom
echo "ingrese su apellido"
read ape
echo "Ingrese su año de nacimiento"
read nac
echo "Ingrese su CI"
read ci
echo "nombre: $nom apellido: $ape nacimiento: $nac cedula $ci">>datos.txt
echo "datos cargados correctamente..."
sleep 2
menu
}
mostrar(){
echo "los datos ingresados son: "
cat datos.txt
sleep 10
menu
}
buscar(){
echo "Ingrese una ci a buscar"
read ci
grep $ci datos.txt
sleep 8
menu
}
salir(){
echo "saliendo hasta la proxima..."
sleep 3
exit
}
menu

