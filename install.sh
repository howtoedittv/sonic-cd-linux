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

# Create the game folder
mkdir -p ~/sonic-cd/game/
cd ~/sonic-cd/game/

# Clone RSDKv3 decompilation repo
git clone --recursive https://github.com/RSDKModding/RSDKv3-Decompilation.git
cd RSDKv3-Decompilation

# Build the game
cmake -B build
cmake --build build --config Release

# Get Sonic CD data.rsdk from MediaFire and put it in the build directory
wget -P ~/sonic-cd/game/RSDKv3-Decompilation/build/ \
"https://download2277.mediafire.com/f2zv5c5mfmmgBhQPzEeCs77A10spUZxumvGeipVPGHmNIRrKjfHaHFQAyM4D1-oygcODwTdLi9eHdYsY5tNrutQaiJaFJeS6cTJl6DZv_gNEOBZio02e8sBs88OupvRxgSf81kAQXhmKm9Ifef8jsOa7lLt3Ltnb4ybd7xDR2UrBDFU/b5mytqh98f8y1dx/data.rsdk"

# Get Sonic CD launch script from your GitHub and save it to home directory
wget -P ~/ \
"https://github.com/howtoedittv/get-sonic-cd-linux/releases/download/1.0/sonic_cd.sh"

# get settings.ini from github to force game to lunch in full screen
wget -P ~/sonic-cd/game/RSDKv3-Decompilation/build/ \
"https://github.com/howtoedittv/sonic-cd-linux/releases/download/1.0/settings.ini"

# Make the script executable
chmod +x ~/sonic_cd.sh

echo "Setup complete! Run the game with: ~/sonic_cd.sh"
