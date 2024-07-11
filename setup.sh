#!/bin/bash

echo "Actualizando lista de paquetes..."
sudo apt-get update

echo "Instalando sl..."
sudo apt-get install -y sl

echo "Verificando instalación de sl..."
if command -v sl >/dev/null 2>&1; then
    echo "sl se ha instalado correctamente."
else
    echo "Error: sl no se ha instalado correctamente."
fi

echo "Agregando /usr/games al PATH..."
export PATH=$PATH:/usr/games

echo "Verificación de la ruta del ejecutable sl..."
if [ -f /usr/games/sl ]; then
    echo "El ejecutable sl se encuentra en /usr/games."
else
    echo "Error: El ejecutable sl no se encuentra en /usr/games."
fi
