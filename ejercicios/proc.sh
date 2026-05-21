#!/bin/bash
clear
ps ux > ultimos_proc
cat ultimos_proc
sleep 5
sh procesos.sh
