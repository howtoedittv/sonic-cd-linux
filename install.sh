#!/bin/bash

# Detect distro and install dependencies
if command -v pacman &>/dev/null; then
    echo "Detected Arch-based system."
    sudo pacman -S --needed base-devel cmake glew sdl2 libogg libtheora libvorbis git wget
elif command -v apt &>/dev/null; then
    echo "Detected Debian/Ubuntu-based system."
    sudo apt update
    sudo apt install -y build-essential cmake libglew-dev libsdl2-dev libogg-dev libtheora-dev libvorbis-dev git wget
elif command -v dnf &>/dev/null; then
    echo "Detected Fedora-based system."
    sudo dnf install -y @development-tools cmake glew-devel SDL2-devel libogg-devel libtheora-devel libvorbis-devel git wget
elif command -v zypper &>/dev/null; then
    echo "Detected openSUSE-based system."
    sudo zypper install -t pattern devel_basis cmake glew-devel libSDL2-devel libogg-devel libtheora-devel libvorbis-devel git wget
else
    echo "Unsupported Linux distribution. Please install dependencies manually."
    exit 1
fi

# get sonic-cd tar file and use it
wget -P ~/ \
"https://github.com/howtoedittv/sonic-cd-linux/releases/download/1.0/soniccd.tar.gz"
tar -xzvf soniccd.tar.gz

# Get Sonic CD launch script from your GitHub and save it to home directory
wget -P ~/ \
"https://github.com/howtoedittv/get-sonic-cd-linux/releases/download/1.0/sonic_cd.sh"

wget -P ~/.local/share/applications/ \
"https://github.com/howtoedittv/sonic-cd-linux/releases/download/1.0/sonic_cd.desktop"
# Make the script executable
chmod +x ~/sonic_cd.sh
chmod +x ~/.local/share/applications/sonic_cd.desktop

mkdir -P ~/Pictures/icons_.dekstop

wget -P ~/Pictures/icons_.dekstop/ \
"https://cdn2.steamgriddb.com/icon/c2ba1bc54b239208cb37b901c0d3b363.png"

echo "Setup complete! Run the game with: ~/sonic_cd.sh or prees on the desktop file "
