#!/bin/bash

let totalbyte=0
let total=0
let admin=0
let contador=0
ruta=$PWD

num=$(( ((RANDOM<<10)|RANDOM) % 10 + 20 ))

for((i=10;i<num;i++))
do

	dt=`date +%y%m%d%S`
        aleat=$(( ((RANDOM<<15)|RANDOM) % 5 + 20 ))
	touch -a archivo$dt$aleat -r $ruta
	tamano=$(( ((RANDOM<<1024)|RANDOM) % 1024 + 4049 ))
	total=$totalbyte+$tamano
	tr -dc [:punct:] </dev/urandom | head -c $tamano >  $ruta/archivo$dt$aleat
	sleep 1s
	contador=$(($contador+1))
done
	echo "Total de archivos creados: " $contador
	echo "El tamaño total de los archivos en Byte es: "$(($total*1000))
