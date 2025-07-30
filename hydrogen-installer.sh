#!/bin/bash

# Hydrogen Helper erstellt von Flawless - https://github.com/killxistcool

# Default color codes
COLOR_CYAN="\033[1;36m"
COLOR_GREEN="\033[1;32m"
COLOR_MAGENTA="\033[1;35m"
COLOR_BLACK="\033[0;30m"
COLOR_WHITE="\033[1;37m"
COLOR_RED="\033[1;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_RESET="\033[0m"

# Cyan = default color
THEME_COLOR=$COLOR_CYAN

# Function to apply color
color_echo() {
    echo -e "${THEME_COLOR}$1${COLOR_RESET}"
}

# Path for key files
KEY_PATH="$HOME/Library/Application Support/Hydrogen/key.txt"
BACKUP_PATH="$HOME/Library/Application Support/Hydrogen/key_backup.txt"

# Function to read current key (if any), stripping trailing % and whitespace
get_current_key() {
    if [ -f "$KEY_PATH" ]; then
        key=$(cat "$KEY_PATH" | tr -d '%' | tr -d '[:space:]')
        echo "$key"
    else
        echo "(No key found)"
    fi
}

while true; do
    clear
    echo -e "${THEME_COLOR}============================"
    echo "     Hydrogen Helper"
    echo "        by Flawless"
    echo -e "============================${COLOR_RESET}"
    echo
    color_echo "What are you looking for?"
    echo
    color_echo "1) Hydrogen Information"
    color_echo "2) Install Hydrogen"
    color_echo "3) Script Options"
    color_echo "4) Key Options"
    color_echo "5) Troubleshooting"
    color_echo "6) Settings"
    color_echo "7) Help"
    color_echo "0) Exit"
    echo
    read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" choice

    case $choice in
        1)
            while true; do
                clear
                color_echo "============================"
                color_echo "    Hydrogen Information"
                color_echo "============================"
                echo
                color_echo "1) FAQ"
                color_echo "2) sUNC"
                color_echo "3) Status"
                color_echo "4) Key Prices"
                color_echo "5) Key Tutorial"
                color_echo "0) Back"
                echo
                read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" infoChoice
                case $infoChoice in
                    1)
                        open "https://hydrostuff.github.io/Hydrogen-Knowledgebase/"
                        ;;
                    2)
                        echo
                        color_echo "Hydrogen is at 94% sUNC."
                        color_echo "Missing: replicatesignal, and getcallbackvalue"
                        color_echo "Test link: https://r.sunc.su/iVvotxiPoV"
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        color_echo "Hydrogen Status: UP and Undetected"
                        read -p "Press Enter to continue..."
                        ;;
                    4)
                        color_echo "Hydrogen Key Prices:"
                        color_echo "• 1 Week: \$3 (Sold Out)"
                        color_echo "• 2 Weeks: \$5.00 (Sold Out)"
                        color_echo "• 1 Month: \$8.00 (Sold Out)"
                        color_echo "• 3 Months: \$18.00 (Available)"
                        read -p "Press Enter to continue..."
                        ;;
                    5)
                        open "https://youtu.be/sq8rHrBykJE"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Invalid option."
                        read -p "Press Enter to continue..."
                        ;;
                esac
            done
            ;;
        2)
            echo
            color_echo "Installing Hydrogen..."
            bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
            read -p "Press Enter to continue..."
            ;;
        3)
            while true; do
                clear
                color_echo "============================"
                color_echo "       Script Options"
                color_echo "============================"
                echo
                color_echo "1) Infinite Yield"
                color_echo "2) Hydro Hub"
                color_echo "0) Back"
                echo
                read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" scriptChoice
                case $scriptChoice in
                    1)
                        clear
                        color_echo "Infinite Yield Script:"
                        echo "----------------------"
                        echo "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
                        echo
                        color_echo "Copy the above script and paste it into your Hydrogen workspace."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        clear
                        color_echo "Hydro Hub Script:"
                        echo "-----------------"
                        echo "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/FRX397/Hydrohub/main/Hydro_hub\", true))()"
                        echo
                        color_echo "Copy the above script and paste it into your Hydrogen workspace."
                        read -p "Press Enter to continue..."
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Invalid option."
                        read -p "Press Enter to continue..."
                        ;;
                esac
            done
            ;;
        4)
            while true; do
                clear
                color_echo "============================"
                color_echo "        Key Options"
                color_echo "============================"
                echo
                color_echo "1) Get Free Key"
                color_echo "2) Backup Key"
                color_echo "3) Remove Key"
                color_echo "4) Buy Adless"
                echo
                color_echo "Your Key: $(get_current_key)"
                echo
                color_echo "0) Back"
                echo
                read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" keyChoice
                case $keyChoice in
                    1)
                        open "https://hydrogen.lat/unlock"
                        ;;
                    2)
                        if [ -f "$KEY_PATH" ]; then
                            cp "$KEY_PATH" "$BACKUP_PATH" && echo "Key backed up successfully to $(realpath "$BACKUP_PATH")."
                        else
                            echo "No key found to backup."
                        fi
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        echo "WARNING: Removing your key will not be irreversible."
                        echo "Your key will become unusable unless you get your HWID reset by xgladius."
                        read -p "Are you sure you want to remove your key? (y/n): " confirmRemove
                        if [[ "$confirmRemove" == "y" || "$confirmRemove" == "Y" ]]; then
                            rm "$KEY_PATH" && echo "Key removed successfully."
                        else
                            echo "Operation cancelled."
                        fi
                        read -p "Press Enter to continue..."
                        ;;
                    4)
                        open "https://hydrogenmacos.selly.store/"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Invalid option."
                        read -p "Press Enter to continue..."
                        ;;
                esac
            done
            ;;
        5)
            while true; do
                clear
                color_echo "============================"
                color_echo "      Troubleshooting"
                color_echo "============================"
                echo
                color_echo "1) No HTTP server on ports 6969–7069"
                color_echo "2) Permission denied (os error)"
                color_echo "3) Error 403"
                color_echo "0) Back"
                echo
                read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" troubleshootChoice
                case $troubleshootChoice in
                    1)
                        echo
                        color_echo "This error usually means you haven't entered a key."
                        color_echo "To fix this, paste your key inside the key pop-up when you first open Roblox."
                        color_echo "If you don't see the pop-up, then you should reinstall Hydrogen."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        echo
                        color_echo "To fix this error make sure that you are on an administrator account and that the Terminal app has Full Disk Access."
                        echo
                        color_echo "How to give Terminal Full Disk Access:"
                        color_echo "1) Open Settings and go to “Privacy & Security”"
                        color_echo "2) Go to “Full Disk Access”"
                        color_echo "3) Press the plus icon at the bottom"
                        color_echo "4) Add Terminal to the list"
                        echo
                        color_echo "How to check if you are an administrator:"
                        color_echo "1) Open Settings and go to “Users & Groups”"
                        color_echo "2) Check if your account is listed as an Admin"
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        echo
                        color_echo "This error occurs during installation because the server refused to process your request."
                        color_echo "This could happen due to many reasons, but using a VPN should fix this issue."
                        read -p "Press Enter to continue..."
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Invalid option."
                        read -p "Press Enter to continue..."
                        ;;
                esac
            done
            ;;
        6)
            while true; do
                clear
                color_echo "============================"
                color_echo "         Settings"
                color_echo "============================"
                echo
                color_echo "Choose your preferred color theme:"
                color_echo "1) Cyan"
                color_echo "2) Green"
                color_echo "3) Magenta"
                color_echo "4) Black"
                color_echo "5) White"
                color_echo "6) Red"
                color_echo "7) Yellow"
                color_echo "0) Back"
                echo
                read -p "$(echo -e "${THEME_COLOR}Choose an option: ${COLOR_RESET}")" colorChoice
                case $colorChoice in
                    1)
                        THEME_COLOR=$COLOR_CYAN
                        echo "Theme set to Cyan."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        THEME_COLOR=$COLOR_GREEN
                        echo "Theme set to Green."
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        THEME_COLOR=$COLOR_MAGENTA
                        echo "Theme set to Magenta."
                        read -p "Press Enter to continue..."
                        ;;
                    4)
                        THEME_COLOR=$COLOR_BLACK
                        echo "Theme set to Black."
                        read -p "Press Enter to continue..."
                        ;;
                    5)
                        THEME_COLOR=$COLOR_WHITE
                        echo "Theme set to White."
                        read -p "Press Enter to continue..."
                        ;;
                    6)
                        THEME_COLOR=$COLOR_RED
                        echo "Theme set to Red."
                        read -p "Press Enter to continue..."
                        ;;
                    7)
                        THEME_COLOR=$COLOR_YELLOW
                        echo "Theme set to Yellow."
                        read -p "Press Enter to continue..."
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Invalid option."
                        read -p "Press Enter to continue..."
                        ;;
                esac
            done
            ;;
        7)
            clear
            color_echo "============================"
            color_echo "           Help"
            color_echo "============================"
            echo
            color_echo "Welcome to Hydrogen Helper by Flawless."
            color_echo "This tool assists you with managing Hydrogen."
            color_echo "Navigate the menus by entering the number corresponding to your choice."
            color_echo "Credits to xgladius for creating Hydrogen."
            echo
            color_echo "For additional assistance, visit:"
            color_echo "https://hydrostuff.github.io/Hydrogen-Knowledgebase/"
            echo
            read -p "Press Enter to return to main menu..."
            ;;
        0)
            echo "Adios"
            osascript -e 'tell application "Terminal" to quit' &
            sleep 1
            exit 0
            ;;
        *)
            echo "Invalid option."
            read -p "Press Enter to continue..."
            ;;
    esac
done
