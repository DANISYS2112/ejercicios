#/bin/bash/
total=0
echo "">factura.txt
menu(){
clear
echo ---- FACTURA----
echo 1-Cargar productos
echo 2-Calcular iva
echo 3-Calcular total
echo 4-Generar factura
echo 5-Salir
read op
case $op in
1)cargar;;
2)calciva;;
3)calctotal;;
4)factura;;
5);;
esac
}

cargar(){
clear
echo "Ingrese un nombre"
read nom
echo "Ingrese un precio"
read prod
parcial=$(($parcial+$prod))
echo $nom "- " $prod>>factura.txt
echo "desea ingresar otro producto 1-Si 2-No"
read opc
case $opc in
1) cargar;;
2) menu;;
esac
}
calciva(){
iva=$((($parcial*22)/100))
echo "El iva es $iva"
echo "desea calcular de vuelta el iva 1-Si 2-No"
read opc
case $opc in
1) calciva;;
2) menu;;
esac
}

calctotal(){
total=$(($parcial+$iva))
echo "El total es $total"
echo "desea calcular de vuelta el total 1-Si 2-No"
read opc
case $opc in
1) calctotal;;
2) menu;;
esac
}

factura(){
echo "">>factura.txt
echo "">>factura.txt
echo "">>factura.txt
echo "Subtotal -            " $parcial>>factura.txt
echo "IVA -                 " $iva>>factura.txt
echo "Total -               " $total>>factura.txt
cat factura.txt
sleep 10
menu
}
menu
