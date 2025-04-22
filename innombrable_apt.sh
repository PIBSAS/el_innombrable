#!/bin/bash

# Asegurarse de que el sistema esté completamente actualizado
echo "Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

# Habilitar locales en_US.UTF-8
echo "Estableciendo LANGUAGE a en_US:en..."
echo "LANGUAGE=en_US:en" | sudo tee -a /etc/default/locale
export LANGUAGE=en_US:en
echo "LANGUAGE configurado como en_US:en"

# Instalar las dependencias de Manim y otras herramientas necesarias en una sola línea
echo "Instalando dependencias..."
sudo apt install -y build-essential python3-dev python3-pip python3-venv libcairo2-dev libpango1.0-dev ffmpeg texlive-full imagemagick vlc python3-tk idle

# Instalar Manim y sus dependencias usando pip
echo "Instalando Manim y sus dependencias..."
pip install --no-cache-dir --break-system-packages manim[all] pyopengl pyglet

# Comprobar si la instalación fue exitosa
echo "Comprobando la instalación de Manim..."
manim --version

echo "¡Instalación completada con éxito!"
