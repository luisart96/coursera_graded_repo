#!/bin/bash

# Solicitar datos al usuario
echo "Cálculo de Interés Simple"
read -p "Ingrese el capital inicial (P): " principal
read -p "Ingrese la tasa de interés (en porcentaje): " interest_rate
read -p "Ingrese el tiempo (en años): " time

# Convertir tasa de interés de porcentaje a decimal
rate=$(echo "scale=4; $interest_rate / 100" | bc)

# Calcular el interés simple
simple_interest=$(echo "scale=2; $principal * $rate * $time" | bc)

# Mostrar el resultado
echo "El interés simple es: $simple_interest"
