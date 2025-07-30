#!/bin/bash

# Hydrogen Helper made by Flawless
# Created by Flawless – https://github.com/killxistcool

clear

echo "============================"
echo "     Hydrogen Helper"
echo "       by Flawless"
echo "============================"
echo
echo "What are you looking for?"
echo
echo "1) Hydrogen Information"
echo "0) Exit"
echo
read -p "Choose an option: " choice

case $choice in
    1)
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
                echo "**Hydrogen is at 94% sUNC.**"
                echo "Missing: **\`replicatesignal\`**, and **\`getcallbackvalue\`**"
                echo "Test link: https://r.sunc.su/iVvotxiPoV"
                ;;
            3)
                echo "Hydrogen Status: 🟢 UP"
                ;;
            4)
                echo "Hydrogen Key Prices:"
                echo "• 1 Week: \$3 (❌ Sold Out)"
                echo "• 2 Weeks: \$5.00 (❌ Sold Out)"
                echo "• 1 Month: \$8.00 (✅ Available)"
                echo "• 3 Months: \$18.00 (✅ Available)"
                ;;
            5)
                open "https://youtu.be/sq8rHrBykJE"
                ;;
            0)
                exec "$0"
                ;;
            *)
                echo "Invalid option."
                ;;
        esac
        ;;
    0)
        echo "Adios"
        exit 0
        ;;
    *)
        echo "Invalid option."
        ;;
esac
