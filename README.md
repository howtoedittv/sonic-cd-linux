# 🎵 Sonic CD for Linux — Automatic Installer & Launcher

> Quick Install (Linux only):
```bash
bash <(wget -qO- https://github.com/me/sonic-cd-linux/raw/main/install.sh)
This command will automatically download and run the installer script in one step.

This repository contains scripts that download, build, and run the RSDKv3 Decompilation of Sonic CD on Linux.
It automatically installs dependencies for your distribution, compiles the engine, and downloads the required data.rsdk game data.

📦 Features
✅ Automatic distro detection (Arch, Debian/Ubuntu, Fedora, openSUSE)

✅ Automatic dependency installation

✅ Automatic download of Sonic CD data.rsdk

✅ Automatic build of RSDKv3

✅ Launch script for quick game start

📥 How to Install

1️⃣ Clone the Repository (Optional)

If you prefer to clone manually:


git clone https://github.com/me/sonic-cd-linux.git

cd sonic-cd-linux

2️⃣ Run the Installer Script

chmod +x install.sh

./install.sh

▶ How to Play

Once installation is complete, you can launch the game with:

~/sonic_cd.sh

Or, from anywhere in the system:

bash ~/sonic_cd.sh

🛠 Supported Distributions

The installer supports the following distributions automatically:

Arch / Manjaro (pacman)

Debian / Ubuntu / Linux Mint (apt)

Fedora (dnf)

openSUSE (zypper)

If your distro is not detected, you will need to install the following packages manually:
cmake glew sdl2 libogg libtheora libvorbis git wget
(Also include base-devel / build-essential / @development-tools depending on your distro.)

🙏 Credits
SEGA — Original Sonic CD game

Rubberduckycooly & Contributors — RSDKv3 Decompilation

me — This automated Linux installer

📄 License
This installer script is released under the MIT License.
The Sonic CD game data is not included in this license.

final notes: the game is set to launch in fullscreen and exiting from the game menu is
non working the only way to exit the game is by pressing super + tab and closing it
manualy from the desktop!!

thanks :>

have fun !!

Sonic the Hedgehog
       ___------__
 |\__-- /\       _-
 |/    __      -
 //\  /  \    /__
 |  o|  0|__     --_
 \\____-- __ \   ___-
 (@@    __/  / /_
    -_____---   --_
     //  \ \\   ___-
   //|\__/  \\  \
   \_-\_____/  \-\
        // \\--\|   -Han J. Lee-
   ____//  ||_
  /_____\ /___\
______________________
