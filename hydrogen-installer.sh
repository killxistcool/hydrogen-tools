#!/bin/bash

# Hydrogen Helper erstellt von Flawless - https://github.com/killxistcool

# Colors
CYAN_BOLD='\033[1;36m'   # Fettes Cyan für alle Texte
RESET='\033[0m'

while true; do
    clear
    echo -e "${CYAN_BOLD}============================${RESET}"
    echo -e "${CYAN_BOLD}     Hydrogen Helper${RESET}"
    echo -e "${CYAN_BOLD}       by Flawless${RESET}"
    echo -e "${CYAN_BOLD}============================${RESET}"
    echo
    echo -e "${CYAN_BOLD}What are you looking for?${RESET}"
    echo
    echo -e "${CYAN_BOLD}1) Hydrogen Information${RESET}"
    echo -e "${CYAN_BOLD}2) Install Hydrogen${RESET}"
    echo -e "${CYAN_BOLD}3) Script Options${RESET}"
    echo -e "${CYAN_BOLD}4) Key Options${RESET}"
    echo -e "${CYAN_BOLD}5) Troubleshooting${RESET}"
    echo -e "${CYAN_BOLD}0) Exit${RESET}"
    echo
    read -p "$(echo -e "${CYAN_BOLD}Choose an option: ${RESET}")" choice

    case $choice in
        1)
            while true; do
                clear
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo -e "${CYAN_BOLD}   Hydrogen Information${RESET}"
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo
                echo -e "${CYAN_BOLD}1) FAQ${RESET}"
                echo -e "${CYAN_BOLD}2) sUNC${RESET}"
                echo -e "${CYAN_BOLD}3) Status${RESET}"
                echo -e "${CYAN_BOLD}4) Key Prices${RESET}"
                echo -e "${CYAN_BOLD}5) Key Tutorial${RESET}"
                echo -e "${CYAN_BOLD}0) Back${RESET}"
                echo
                read -p "$(echo -e "${CYAN_BOLD}Choose an option: ${RESET}")" infoChoice

                case $infoChoice in
                    1)
                        open "https://hydrostuff.github.io/Hydrogen-Knowledgebase/"
                        ;;
                    2)
                        echo -e "${CYAN_BOLD}Hydrogen is at 94% sUNC.${RESET}"
                        echo -e "${CYAN_BOLD}Missing: replicatesignal, and getcallbackvalue${RESET}"
                        echo -e "${CYAN_BOLD}Test link: https://r.sunc.su/iVvotxiPoV${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    3)
                        echo -e "${CYAN_BOLD}Hydrogen Status: 🟢 UP${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    4)
                        echo -e "${CYAN_BOLD}Hydrogen Key Prices:${RESET}"
                        echo -e "${CYAN_BOLD}• 1 Week: \$3 (❌ Sold Out)${RESET}"
                        echo -e "${CYAN_BOLD}• 2 Weeks: \$5.00 (❌ Sold Out)${RESET}"
                        echo -e "${CYAN_BOLD}• 1 Month: \$8.00 (❌ Sold Out)${RESET}"
                        echo -e "${CYAN_BOLD}• 3 Months: \$18.00 (✅ Available)${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    5)
                        open "https://youtu.be/sq8rHrBykJE"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo -e "${CYAN_BOLD}Invalid option.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                esac
            done
            ;;
        2)
            echo -e "${CYAN_BOLD}Installing Hydrogen...${RESET}"
            bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
            read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
            ;;
        3)
            while true; do
                clear
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo -e "${CYAN_BOLD}     Script Options${RESET}"
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo
                echo -e "${CYAN_BOLD}1) Infinite Yield${RESET}"
                echo -e "${CYAN_BOLD}2) Hydro Hub${RESET}"
                echo -e "${CYAN_BOLD}0) Back${RESET}"
                echo
                read -p "$(echo -e "${CYAN_BOLD}Choose an option: ${RESET}")" scriptChoice

                case $scriptChoice in
                    1)
                        clear
                        echo -e "${CYAN_BOLD}Infinite Yield Script:${RESET}"
                        echo -e "${CYAN_BOLD}----------------------${RESET}"
                        echo -e "${CYAN_BOLD}loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()${RESET}"
                        echo
                        echo -e "${CYAN_BOLD}Copy the above script and paste it into your Hydrogen workspace.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    2)
                        clear
                        echo -e "${CYAN_BOLD}Hydro Hub Script:${RESET}"
                        echo -e "${CYAN_BOLD}-----------------${RESET}"
                        echo -e "${CYAN_BOLD}loadstring(game:HttpGet(\"https://raw.githubusercontent.com/FRX397/Hydrohub/main/Hydro_hub\", true))()${RESET}"
                        echo
                        echo -e "${CYAN_BOLD}Copy the above script and paste it into your Hydrogen workspace.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo -e "${CYAN_BOLD}Invalid option.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                esac
            done
            ;;
        4)
            while true; do
                clear
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo -e "${CYAN_BOLD}      Key Options${RESET}"
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo
                echo -e "${CYAN_BOLD}1) Get Free Key${RESET}"
                echo -e "${CYAN_BOLD}2) Remove Key${RESET}"
                echo -e "${CYAN_BOLD}3) Buy Adless${RESET}"
                echo -e "${CYAN_BOLD}0) Back${RESET}"
                echo
                read -p "$(echo -e "${CYAN_BOLD}Choose an option: ${RESET}")" keyChoice

                case $keyChoice in
                    1)
                        open "https://hydrogen.lat/unlock"
                        ;;
                    2)
                        echo -e "${CYAN_BOLD}WARNING:${RESET} Removing your key will not be irreversible."
                        echo -e "${CYAN_BOLD}Your key will become unusable unless you get your HWID reset by xgladius.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Are you sure you want to remove your key? (y/n): ${RESET}")" confirmRemove
                        if [[ "$confirmRemove" == "y" || "$confirmRemove" == "Y" ]]; then
                            rm ~/Library/Application\ Support/Hydrogen/key.txt && echo -e "${CYAN_BOLD}Key removed successfully.${RESET}"
                        else
                            echo -e "${CYAN_BOLD}Operation cancelled.${RESET}"
                        fi
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    3)
                        open "https://hydrogenmacos.selly.store/"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo -e "${CYAN_BOLD}Invalid option.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                esac
            done
            ;;
        5)
            while true; do
                clear
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo -e "${CYAN_BOLD}      Troubleshooting${RESET}"
                echo -e "${CYAN_BOLD}============================${RESET}"
                echo
                echo -e "${CYAN_BOLD}1) No HTTP server on ports 6969–7069${RESET}"
                echo -e "${CYAN_BOLD}2) Permission denied (os error)${RESET}"
                echo -e "${CYAN_BOLD}3) Error 403${RESET}"
                echo -e "${CYAN_BOLD}0) Back${RESET}"
                echo
                read -p "$(echo -e "${CYAN_BOLD}Choose an option: ${RESET}")" troubleshootChoice

                case $troubleshootChoice in
                    1)
                        echo -e "${CYAN_BOLD}"
                        echo "This error usually means you haven't entered a key."
                        echo "To fix this, paste your key inside the key pop-up when you first open Roblox."
                        echo "If you don't see the pop-up, then you should reinstall Hydrogen."
                        echo -e "${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    2)
                        echo -e "${CYAN_BOLD}"
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
                        echo -e "${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    3)
                        echo -e "${CYAN_BOLD}"
                        echo "This error occurs during installation because the server refused to process your request."
                        echo "This could happen due to many reasons, but using a VPN should fix this issue."
                        echo -e "${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo -e "${CYAN_BOLD}Invalid option.${RESET}"
                        read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
                        ;;
                esac
            done
            ;;
        0)
            echo -e "${CYAN_BOLD}Adios${RESET}"
            osascript -e 'tell application "Terminal" to quit' &
            sleep 1
            exit 0
            ;;
        *)
            echo -e "${CYAN_BOLD}Invalid option.${RESET}"
            read -p "$(echo -e "${CYAN_BOLD}Press Enter to continue...${RESET}")"
            ;;
    esac
done
