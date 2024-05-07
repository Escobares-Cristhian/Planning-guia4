#!/bin/bash

# Obtener la cantidad de RAM instalada
ram=$(free -m | awk '/^Mem:/{print $2}')

# Imprimir la cantidad de RAM
echo "La cantidad de RAM instalada es: $ram MB o $(echo "scale=2; $ram/1024" | bc) GB."
