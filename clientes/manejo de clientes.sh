function menu(){
    while true;
    do
        clear
        echo "1) alta cliente"
        echo "2) listado cliente"
        echo "3) buscar cliente por ci"
        echo "4) modificar cliente"
        echo "5) eliminar cliente"
        echo "6) salir"
        read op
        case $op in
            1) altacliente;;
            2) listadocliente;;
            3) buscarclienteporci;;
            4) modificarcliente;;
            5) eliminarcliente;;
            6) salir;;
        esac
    done
}

altacliente() {
    clear
    echo "Ingrese nombre"
    read nom
    echo "Ingrese apellido"
    read ape
    echo "Ingrese dia de nacimiento"
    read dia
    echo "Ingrese mes de nacimiento"
    read mes
    echo "Ingrese anio de nacimiento"
    read anio
    echo "Ingrese CI"
    read ci
    edad=$((2024-$anio))
    echo nombre: $nom apellido: $ape dia: $dia mes: $mes anio: $anio edad: $edad ci: $ci >> bds.txt
    sleep 5
}

listadocliente() {
    clear
    echo "listado de clientes:"
    cat bds.txt
    sleep 5
}

buscarclienteporci() {
    clear
    echo "ingrese la CI del cliente que esta buscando:"
    read ci_buscada
    grep $ci_buscada bds.txt
    sleep 5
}

modificarcliente() {
    eliminarcliente
    altacliente
    sleep 5
}

eliminarcliente() {
    echo "ingrese la CI del cliente que quiere eliminar:"
    read ci_eliminar
    grep -v $ci_eliminar bds.txt > temp.txt
    mv temp.txt bds.txt
    echo "cliente eliminado correctamente"
    sleep 5
}

salir() {
    clear
    echo "saliendo..."
    sleep 2
    exit
}

menu
