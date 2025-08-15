# 🎵 Sonic CD for Linux — Automatic Installer & Launcher

> Quick Install (Linux only):
```bash
bash <(wget -qO- https://github.com/me/get-sonic-cd-linux/raw/main/install_sonic_cd.sh)
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

bash
Copy
Edit
git clone https://github.com/me/get-sonic-cd-linux.git
cd get-sonic-cd-linux
2️⃣ Run the Installer Script
The install_sonic_cd.sh script will:

Detect your Linux distribution

Install required packages

Download and build the RSDKv3 engine

Download the Sonic CD data.rsdk file

Place a sonic_cd.sh launcher in your home directory

bash
Copy
Edit
chmod +x install_sonic_cd.sh
./install_sonic_cd.sh
▶ How to Play
Once installation is complete, you can launch the game with:

bash
Copy
Edit
~/sonic_cd.sh
Or, from anywhere:

bash
Copy
Edit
bash ~/sonic_cd.sh
🛠 Supported Distributions
The installer supports the following distributions automatically:

Arch / Manjaro (pacman)

Debian / Ubuntu / Linux Mint (apt)

Fedora (dnf)

openSUSE (zypper)

If your distro is not detected, you will need to install the following packages manually:

nginx
Copy
Edit
cmake glew sdl2 libogg libtheora libvorbis git wget
(Also include base-devel / build-essential / @development-tools depending on your distro.)

🙏 Credits
SEGA — Original Sonic CD game

Rubberduckycooly & Contributors — RSDKv3 Decompilation

me — This automated Linux installer

📄 License
This installer script is released under the MIT License.
The Sonic CD game data is not included in this license.

