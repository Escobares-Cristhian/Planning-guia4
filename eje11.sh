#!/bin/bash

# Elimino /tmp/datos
rm "/tmp/datos" > "/dev/null"

# Bucle infinito para leer y guardar los datos cada segundo
while true; do
    # Obtener la cantidad de bytes recibidos
    bytes_recibidos=$(cat "/sys/class/net/enp2s0/statistics/rx_bytes")
    
    # Guardar los datos en el archivo
    # echo "$(date +%Y-%m-%d_%H:%M:%S) $bytes_recibidos" >> "$archivo"
    echo "$(date +%H) $bytes_recibidos" >> "/tmp/datos"
    
    # Esperar 1 segundo antes de la siguiente lectura
    sleep 1
done
