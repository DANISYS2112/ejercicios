#!/bin/bash
touch /var/log/usuarios.log
DATE=`date +%F`
TIME=`date +%H:%M`
LOG=/var/log/usuarios.log

read -p "Ingrese nombre: " nom
read -p "Ingrese Password: " pass
cat /etc/group | tail -n 4
sleep 3
read -p "Ingrese grupo: " grp
sudo useradd -g ${grp} -s /bin/bash -d /home/${nom} -m ${nom}
echo ${nom}:${pass} | sudo chpasswd
sleep 3
echo "el usuario ${nom} se creo el dia ${DATE} a las ${TIME}">>${LOG}
sleep 2
cat /var/log/usuarios.log
