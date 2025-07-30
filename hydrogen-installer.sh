#!/bin/bash

# Hydrogen Helper erstellt von Flawless - https://github.com/killxistcool

# Colors
TITLE_BLUE='\033[1;36m'    # Fettes Cyan für die Titel
OPTION_BLUE='\033[0;96m'   # Helles Cyan für die opptionen wie z.b. "Hydrogen Information"
BOLD='\033[1m'
RESET='\033[0m'

while true; do
    clear
    echo -e "${TITLE_BLUE}============================${RESET}"
    echo -e "${TITLE_BLUE}${BOLD}     Hydrogen Helper${RESET}"
    echo -e "${TITLE_BLUE}${BOLD}       by Flawless${RESET}"
    echo -e "${TITLE_BLUE}============================${RESET}"
    echo
    echo -e "${TITLE_BLUE}${BOLD}What are you looking for?${RESET}"
    echo
    echo -e "${OPTION_BLUE}1) Hydrogen Information${RESET}"
    echo -e "${OPTION_BLUE}2) Install Hydrogen${RESET}"
    echo -e "${OPTION_BLUE}3) Script Options${RESET}"
    echo -e "${OPTION_BLUE}4) Key Options${RESET}"
    echo -e "${OPTION_BLUE}5) Troubleshooting${RESET}"
    echo -e "${OPTION_BLUE}0) Exit${RESET}"
    echo
    read -p "Choose an option: " choice

    case $choice in
        1)
            while true; do
                clear
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo -e "${TITLE_BLUE}${BOLD}   Hydrogen Information${RESET}"
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo
                echo -e "${OPTION_BLUE}1) FAQ${RESET}"
                echo -e "${OPTION_BLUE}2) sUNC${RESET}"
                echo -e "${OPTION_BLUE}3) Status${RESET}"
                echo -e "${OPTION_BLUE}4) Key Prices${RESET}"
                echo -e "${OPTION_BLUE}5) Key Tutorial${RESET}"
                echo -e "${OPTION_BLUE}0) Back${RESET}"
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
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo -e "${TITLE_BLUE}${BOLD}     Script Options${RESET}"
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo
                echo -e "${OPTION_BLUE}1) Infinite Yield${RESET}"
                echo -e "${OPTION_BLUE}2) Hydro Hub${RESET}"
                echo -e "${OPTION_BLUE}0) Back${RESET}"
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
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo -e "${TITLE_BLUE}${BOLD}      Key Options${RESET}"
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo
                echo -e "${OPTION_BLUE}1) Get Free Key${RESET}"
                echo -e "${OPTION_BLUE}2) Remove Key${RESET}"
                echo -e "${OPTION_BLUE}3) Buy Adless${RESET}"
                echo -e "${OPTION_BLUE}0) Back${RESET}"
                echo
                read -p "Choose an option: " keyChoice

                case $keyChoice in
                    1)
                        open "https://hydrogen.lat/unlock"
                        ;;
                    2)
                        echo -e "${BOLD}WARNING:${RESET} Removing your key will not be irreversible."
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
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo -e "${TITLE_BLUE}${BOLD}      Troubleshooting${RESET}"
                echo -e "${TITLE_BLUE}============================${RESET}"
                echo
                echo -e "${OPTION_BLUE}1) No HTTP server on ports 6969–7069${RESET}"
                echo -e "${OPTION_BLUE}2) Permission denied (os error)${RESET}"
                echo -e "${OPTION_BLUE}3) Error 403${RESET}"
                echo -e "${OPTION_BLUE}0) Back${RESET}"
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
