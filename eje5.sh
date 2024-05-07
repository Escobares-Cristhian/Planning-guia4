#!/bin/bash

numero_aleatorio=$(((RANDOM % 10) + 1 ))

echo "Estoy pensando en un número entre 1 y 10, intente adivinarlo:"
read numero_elegido

# Verifico si el número ingresado es válido
if ! [[ $numero_elegido =~ ^[1-9]$|^10$ ]]; then
    echo "Número ingresado no válido. Debe ser un número entre 1 y 10."
    exit 1
fi

# Verifico si adivinó o no
if [ "$numero_elegido" -eq "$numero_aleatorio" ]; then
    echo "¡Felicidades! Has adivinado :)"
else
    echo "Mala suerte, estaba pensando en el $numero_aleatorio. Inténtalo de nuevo ;)"
fi

