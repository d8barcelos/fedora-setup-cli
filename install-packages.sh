#!/bin/bash

echo "Atualizando pacotes..."
sudo dnf update -y

echo "Instalando pacotes via DNF..."
sudo dnf install -y discord code postman dbeaver obsidian

echo "Instalando pacotes via Flatpak..."
flatpak install flathub com.jetbrains.Rider -y
flatpak install flathub rest.insomnia.Insomnia -y

echo "Baixando e instalando Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install -y ./google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm

echo "Instalação concluída!"

