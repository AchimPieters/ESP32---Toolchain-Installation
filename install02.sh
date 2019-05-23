#!/usr/bin/env bash

# Project name: ESP32 - Toolchain Installation
# Project URI: https://www.studiopieters.nl/esp32-toolchain-installation
# Description: ESP32 - Toolchain Installation Script
# Version: 1.0.2
# License: MIT - Copyright 2019 StudioPieters® (https://opensource.org/licenses/MIT)


#Install the Required Python Packages
python -m pip install --user -r $IDF_PATH/requirements.txt

whiptail --title "Part 2 complete" --msgbox "ESP32 - Toolchain Installation complete.\nCopyright 2019 StudioPieters®" 8 78
