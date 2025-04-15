#!/bin/bash

# Asegurarse de que el sistema esté completamente actualizado
echo "Actualizando el sistema..."
pacman -Syu --noconfirm

# Habilitar locales en_US.UTF-8
echo "Habilitando locales en_US.UTF-8..."
sed -i '/^#en_US.UTF-8 UTF-8/s/^#//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" | tee /etc/locale.conf
export LANG=en_US.UTF-8
echo "Locale configurado como en_US.UTF-8"

# Instalar las dependencias de Manim y otras herramientas necesarias en una sola línea
echo "Instalando dependencias..."
pacman -S --noconfirm gcc base-devel python-pip ffmpeg texlive-core texlive-latexextra texlive-fontsextra cairo pango libffi pkgconf imagemagick ttf-dejavu ttf-liberation vlc nano

# Instalar Manim y sus dependencias usando pip
echo "Instalando Manim y sus dependencias..."
pip install --no-cache-dir --break-system-packages manim[all] pyopengl pyglet

# Comprobar si la instalación fue exitosa
echo "Comprobando la instalación de Manim..."
manim --version

echo "¡Instalación completada con éxito!"
