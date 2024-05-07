#!/bin/bash

echo "Ingrese el sueldo:"
read sueldo

echo "Rango"
read rango

case $rango in
    1)
        echo "La asignación es de $(echo "$sueldo*0.83" | bc)"
        ;;
    2)
        echo "La asignación es de $(echo "$sueldo*1.2" | bc)"
        ;;
    3)
        echo "La asignación es de $(echo "$sueldo*5" | bc)"
        ;;
    *)
        echo "Rango inválido. Debe ser 1, 2 o 3."
        exit 1
        ;;
esac
