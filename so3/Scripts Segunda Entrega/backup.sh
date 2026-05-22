#!/bin/bash
mysqldump -uroot -predta1l369 fratti > backupBD.sql
echo "Backup realizado con éxito.."
sleep 2
echo "Regresando al menú principal.."
sleep 2
clear
sh menu.sh