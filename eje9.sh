#!/bin/bash

# Obtener el modelo del procesador
modelo=$(cat /proc/cpuinfo | grep "model name" | head -1)
hilos=$(nproc --all)

# Imprimir el modelo del procesador
echo "CPU $modelo"
echo "CPU with $hilos threads"

