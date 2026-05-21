#!/bin/bash
mysql –u usuario -predta1l369 fratti < backupBD.sql 

echo "Restauración realizada con éxito.."
sleep 2
echo "Regresando al menú principal.."
sleep 2
clear
sh menu.sh