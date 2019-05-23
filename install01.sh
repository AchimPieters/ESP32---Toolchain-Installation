#!/usr/bin/env bash

# Project name: ESP32 - Toolchain Installation
# Project URI: https://www.studiopieters.nl/esp32-toolchain-installation
# Description: ESP32 - Toolchain Installation Script
# Version: 1.0.2
# License: MIT - Copyright 2019 StudioPieters® (https://opensource.org/licenses/MIT)

#Check if script is being run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if [ ! $? = 0 ]; then
   exit 1
else

# Installing whiptail to display dialog boxes from shell scripts.
apt-get install -y git whiptail


#Install Prerequisites
sudo easy_install pip
touch ~/.bash_profile

# Setup Toolchain
mkdir -p ~/esp32
cd ~/esp32

curl -O https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz
tar -xzf xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz

#update PATH environment variable
echo "export PATH=$HOME/esp32/xtensa-esp32-elf/bin:$PATH" >> ~/.bash_profile

#Get ESP-IDF
cd ~/esp32
git clone -b v3.2 --recursive https://github.com/espressif/esp-idf.git

#update PATH environment variable
echo "export IDF_PATH=~/esp32/esp-idf" >> ~/.bash_profile

whiptail --title "Part 1 complete" --msgbox "ESP32 - Toolchain Installation complete. The system will Restart. \nCopyright 2019 StudioPieters®" 8 78
sudo shutdown -h +1
fi
