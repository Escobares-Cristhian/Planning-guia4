#!/bin/bash

echo "Ingrese el primer número:"
read num1

echo "Ingrese el segundo número:"
read num2

#suma=$((num1 + num2))  # Sólo sumaba enteros
suma=$(echo "$num1 + $num2" | bc) # Se encontró en internet para sumar float también


echo "La suma de $num1 y $num2 es: $suma"
