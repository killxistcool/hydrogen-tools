#!/bin/bash

# Hydrogen Helper made by Flawless
# Created by Flawless – https://github.com/killxistcool

clear

echo "============================"
echo "     Hydrogen Helper"
echo "       by Flawless"
echo "============================"
echo
echo "1) Install Hydrogen"
echo "2) Uninstall Hydrogen"
echo "3) Reinstall Hydrogen"
echo "0) Exit"
echo
read -p "Choose an option: " choice

case $choice in
    1)
        echo "Installing Hydrogen..."
        sudo bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
        ;;
    2)
        echo "Uninstalling Hydrogen..."
        sudo rm -rf ~/Applications/Hydrogen-M.app
        echo "Hydrogen has been uninstalled."
        ;;
    3)
        echo "Reinstalling Hydrogen..."
        sudo rm -rf ~/Hydrogen
        sudo bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
        ;;
    0)
        echo "Adios"
        exit 0
        ;;
    *)
        echo "Invalid Option."
        ;;
esac
