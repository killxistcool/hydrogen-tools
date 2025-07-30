#!/bin/bash

# Hydrogen Helper made by Flawless
# Created by Flawless – https://github.com/killxistcool

# Colors
BLUE='\033[0;36m'   # cyan/light blue
BOLD='\033[1m'
RESET='\033[0m'

while true; do
    clear
    echo -e "${BLUE}============================${RESET}"
    echo -e "${BLUE}${BOLD}     Hydrogen Helper${RESET}"
    echo -e "${BLUE}${BOLD}       by Flawless${RESET}"
    echo -e "${BLUE}============================${RESET}"
    echo
    echo -e "${BOLD}What are you looking for?${RESET}"
    echo
    echo -e "${BLUE}1)${RESET} Hydrogen Information"
    echo -e "${BLUE}2)${RESET} Install Hydrogen"
    echo -e "${BLUE}3)${RESET} Script Options"
    echo -e "${BLUE}4)${RESET} Key Options"
    echo -e "${BLUE}5)${RESET} Troubleshooting"
    echo -e "${BLUE}0)${RESET} Exit"
    echo
    read -p "Choose an option: " choice

    case $choice in
        1)
            while true; do
                clear
                echo -e "${BLUE}============================${RESET}"
                echo -e "${BLUE}${BOLD}   Hydrogen Information${RESET}"
                echo -e "${BLUE}============================${RESET}"
                echo
                echo -e "${BLUE}1)${RESET} FAQ"
                echo -e "${BLUE}2)${RESET} sUNC"
                echo -e "${BLUE}3)${RESET} Status"
                echo -e "${BLUE}4)${RESET} Key Prices"
                echo -e "${BLUE}5)${RESET} Key Tutorial"
                echo -e "${BLUE}0)${RESET} Back"
                echo
                read -p "Choose an option: " infoChoice

                case $infoChoice in
                    1)
                        open "https://hydrostuff.github.io/Hydrogen-Knowledgebase/"
                        ;;
                    2)
                        echo -e "${BOLD}Hydrogen is at 94% sUNC.${RESET}"
                        echo -e "Missing: replicatesignal, and getcallbackvalue"
                        echo "Test link: https://r.sunc.su/iVvotxiPoV"
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        echo -e "Hydrogen Status: ${BOLD}🟢 UP${RESET}"
                        read -p "Press Enter to continue..."
                        ;;
                    4)
                        echo -e "Hydrogen Key Prices:"
                        echo -e "• 1 Week: \$3 (❌ Sold Out)"
                        echo -e "• 2 Weeks: \$5.00 (❌ Sold Out)"
                        echo -e "• 1 Month: \$8.00 (❌ Sold Out)"
                        echo -e "• 3 Months: \$18.00 (✅ Available)"
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
            echo -e "${BOLD}Installing Hydrogen...${RESET}"
            bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
            read -p "Press Enter to continue..."
            ;;
        3)
            while true; do
                clear
                echo -e "${BLUE}============================${RESET}"
                echo -e "${BLUE}${BOLD}     Script Options${RESET}"
                echo -e "${BLUE}============================${RESET}"
                echo
                echo -e "${BLUE}1)${RESET} Infinite Yield"
                echo -e "${BLUE}2)${RESET} Hydro Hub"
                echo -e "${BLUE}0)${RESET} Back"
                echo
                read -p "Choose an option: " scriptChoice

                case $scriptChoice in
                    1)
                        clear
                        echo -e "${BOLD}Infinite Yield Script:${RESET}"
                        echo "----------------------"
                        echo "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
                        echo
                        echo "Copy the above script and paste it into your Hydrogen workspace."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        clear
                        echo -e "${BOLD}Hydro Hub Script:${RESET}"
                        echo "-----------------"
                        echo "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/FRX397/Hydrohub/main/Hydro_hub\", true))()"
                        echo
                        echo "Copy the above script and paste it into your Hydrogen workspace."
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
                echo -e "${BLUE}============================${RESET}"
                echo -e "${BLUE}${BOLD}      Key Options${RESET}"
                echo -e "${BLUE}============================${RESET}"
                echo
                echo -e "${BLUE}1)${RESET} Get Free Key"
                echo -e "${BLUE}2)${RESET} Remove Key"
                echo -e "${BLUE}3)${RESET} Buy Adless"
                echo -e "${BLUE}0)${RESET} Back"
                echo
                read -p "Choose an option: " keyChoice

                case $keyChoice in
                    1)
                        open "https://hydrogen.lat/unlock"
                        ;;
                    2)
                        echo -e "${RED}WARNING:${RESET} Removing your key will not be irreversible."
                        echo "Your key will become unusable unless you get your HWID reset by xgladius."
                        read -p "Are you sure you want to remove your key? (y/n): " confirmRemove
                        if [[ "$confirmRemove" == "y" || "$confirmRemove" == "Y" ]]; then
                            rm ~/Library/Application\ Support/Hydrogen/key.txt && echo "Key removed successfully."
                        else
                            echo "Operation cancelled."
                        fi
                        read -p "Press Enter to continue..."
                        ;;
                    3)
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
                echo -e "${BLUE}============================${RESET}"
                echo -e "${BLUE}${BOLD}      Troubleshooting${RESET}"
                echo -e "${BLUE}============================${RESET}"
                echo
                echo -e "${BLUE}1)${RESET} No HTTP server on ports 6969–7069"
                echo -e "${BLUE}2)${RESET} Permission denied (os error)"
                echo -e "${BLUE}3)${RESET} Error 403"
                echo -e "${BLUE}0)${RESET} Back"
                echo
                read -p "Choose an option: " troubleshootChoice

                case $troubleshootChoice in
                    1)
                        echo
                        echo "This error usually means you haven't entered a key."
                        echo "To fix this, paste your key inside the key pop-up when you first open Roblox."
                        echo "If you don't see the pop-up, then you should reinstall Hydrogen."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        echo
                        echo "To fix this error make sure that you are on an administrator account and that the Terminal app has Full Disk Access."
                        echo
                        echo "How to give Terminal Full Disk Access:"
                        echo "1) Open Settings and go to “Privacy & Security”"
                        echo "2) Go to “Full Disk Access”"
                        echo "3) Press the plus icon at the bottom"
                        echo "4) Add Terminal to the list"
                        echo
                        echo "How to check if you are an administrator:"
                        echo "1) Open Settings and go to “Users & Groups”"
                        echo "2) Check if your account is listed as an Admin"
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        echo
                        echo "This error occurs during installation because the server refused to process your request."
                        echo "This could happen due to many reasons, but using a VPN should fix this issue."
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
