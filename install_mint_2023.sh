#!/bin/bash

# Update package lists
sudo apt update

# Install VLC, htop, Git, VSCodium
sudo apt install vlc htop gimp git -y


sudo ubuntu-drivers autoinstall

# Upgrade the system
sudo apt upgrade -y

# Install FreeCAD
sudo add-apt-repository --yes ppa:freecad-maintainers/freecad-stable
sudo apt update
sudo apt install freecad -y

# Install VSCodium
# Add VSCodium GPG key
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo gpg --dearmor -o /usr/share/keyrings/vscodium-archive-keyring.gpg

# Add VSCodium repository
echo 'deb [signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list > /dev/null

# Update package lists again to include the new repository
sudo apt update

# Install VSCodium
sudo apt install codium -y

# Import Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Add VSCode repository
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

# Update package lists
sudo apt update

# Install VSCode
sudo apt install code -y

# Install GitHub Desktop
# Add GitHub Desktop repository
sudo add-apt-repository --yes -u ppa:shiftkey/desktop

# Install GitHub Desktop
sudo apt install github-desktop -y

# Install Arduino IDE
sudo apt install arduino -y

# Install Candle (GRBL G-code sender)
wget https://github.com/Denvi/Candle/releases/download/v1.1.7/candle_1.1.7_Linux.deb
sudo dpkg -i candle_1.1.7_Linux.deb
sudo apt install -f

# Install Inkscape with LaserGRBL extension
sudo apt install inkscape -y
wget https://raw.githubusercontent.com/LaserGRBL/InkscapeLaser/master/InkscapeLaser.py
sudo mv InkscapeLaser.py /usr/share/inkscape/extensions/

# Install Wine
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wine64 wine32 -y

# Install Teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb
sudo dpkg -i teams_1.4.00.7556_amd64.deb
sudo apt install -f

# Install LibreWolf
sudo apt install librewolf -y

# Install Cura
sudo apt install cura -y

# Install PrusaSlicer
sudo add-apt-repository ppa:prusa3d/prusa-slicer
sudo apt update
sudo apt install prusa-slicer -y

# Install SuperSlicer
# Download and extract the latest release from: https://github.com/supermerill/SuperSlicer/releases
# For example:
# wget https://github.com/supermerill/SuperSlicer/releases/download/2.3.61/SuperSlicer-2.3.61-x86_64-qt5.15.2.deb
# sudo dpkg -i SuperSlicer-2.3.61-x86_64-qt5.15.2.deb
# sudo apt install -f

# Install Orca Slicer
# Download and extract the latest release from: https://github.com/OrcaSlicer/orca/releases
# For example:
# wget https://github.com/OrcaSlicer/orca/releases/download/v0.6.2/orca-0.6.2-Linux.deb
# sudo dpkg -i orca-0.6.2-Linux.deb
# sudo apt install -f

# Additional tools for makers
sudo apt install kicad fritzing geda pcb -y

# Upgrade the system
sudo apt upgrade -y