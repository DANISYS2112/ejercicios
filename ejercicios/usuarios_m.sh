#!/bin/bash
for usuario in alumno1 alumno2 alumno3;
do
useradd -m $usuario
echo "$usuario:1234 | chpasswd
done

