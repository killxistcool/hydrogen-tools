#!/bin/bash

# Hydrogen Helper made by Flawless
# Created by Flawless – https://github.com/killxistcool

while true; do
    clear
    echo "============================"
    echo "     Hydrogen Helper"
    echo "       by Flawless"
    echo "============================"
    echo
    echo "What are you looking for?"
    echo
    echo "1) Hydrogen Information"
    echo "2) Install Hydrogen"
    echo "3) Script Options"
    echo "4) Key Options"
    echo "0) Exit"
    echo
    read -p "Choose an option: " choice

    case $choice in
        1)
            while true; do
                clear
                echo "============================"
                echo "   Hydrogen Information"
                echo "============================"
                echo
                echo "1) FAQ"
                echo "2) sUNC"
                echo "3) Status"
                echo "4) Key Prices"
                echo "5) Key Tutorial"
                echo "0) Back"
                echo
                read -p "Choose an option: " infoChoice

                case $infoChoice in
                    1)
                        open "https://hydrostuff.github.io/Hydrogen-Knowledgebase/"
                        ;;
                    2)
                        echo "Hydrogen is at 94% sUNC."
                        echo "Missing: replicatesignal, and getcallbackvalue"
                        echo "Test link: https://r.sunc.su/iVvotxiPoV"
                        read -p "Press Enter to continue..."
                        ;;
                    3)
                        echo "Hydrogen Status: 🟢 UP"
                        read -p "Press Enter to continue..."
                        ;;
                    4)
                        echo "Hydrogen Key Prices:"
                        echo "• 1 Week: \$3 (❌ Sold Out)"
                        echo "• 2 Weeks: \$5.00 (❌ Sold Out)"
                        echo "• 1 Month: \$8.00 (❌ Sold Out)"
                        echo "• 3 Months: \$18.00 (✅ Available)"
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
            echo "Installing Hydrogen..."
            bash -c "$(curl -fsSL https://www.hydrogen.lat/install)"
            read -p "Press Enter to continue..."
            ;;
        3)
            while true; do
                clear
                echo "============================"
                echo "     Script Options"
                echo "============================"
                echo
                echo "1) Infinite Yield"
                echo "2) Hydro Hub"
                echo "0) Back"
                echo
                read -p "Choose an option: " scriptChoice

                case $scriptChoice in
                    1)
                        clear
                        echo "Infinite Yield Script:"
                        echo "----------------------"
                        echo "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
                        echo
                        echo "Copy the above script and paste it into your Hydrogen workspace."
                        read -p "Press Enter to continue..."
                        ;;
                    2)
                        clear
                        echo "Hydro Hub Script:"
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
                echo "============================"
                echo "      Key Options"
                echo "============================"
                echo
                echo "1) Get Free Key"
                echo "2) Remove Key"
                echo "3) Buy Adless"
                echo "0) Back"
                echo
                read -p "Choose an option: " keyChoice

                case $keyChoice in
                    1)
                        open "https://hydrogen.lat/unlock"
                        ;;
                    2)
                        echo "WARNING: Removing your key will not be irreversible."
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
        0)
            echo "Adios"
            exit 0
            ;;
        *)
            echo "Invalid option."
            read -p "Press Enter to continue..."
            ;;
    esac
done
