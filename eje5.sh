#!/bin/bash

numero_aleatorio=$(((RANDOM % 10) + 1 ))

echo "Estoy pensando en un número entre 1 y 10, intente adivinarlo:"
read numero_elegido

if [ "$numero_elegido" -eq "$numero_aleatorio" ]; then
    echo "¡Felicidades! Has adivinado."
else
    echo "Mala suerte, estaba pensando en el $numero_aleatorio. Inténtalo de nuevo ;)"
fi

