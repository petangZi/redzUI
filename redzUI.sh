#!/data/data/com.termux/files/usr/bin/bash

# RedzUI Script - by king RED 😈
clear

# Function to display fancy text with colors
fancy_text() {
    echo -e "\e[1;36m$1\e[0m"
}

# Function to display loading animation
loading() {
    echo -n -e "\e[1;32m"
    for i in {1..3}; do
        echo -n "."
        sleep 1
    done
    echo -e "\e[0m"
}

# Display a cool header
echo -e "\e[1;35m======================================\e[0m"
echo -e "\e[1;33m    Welcome to RedzUI by king RED 😈  \e[0m"
echo -e "\e[1;35m======================================\e[0m"

# Wait a second for some dramatic effect
sleep 1

# Display theme options with some cool effects
fancy_text "Select your theme:"

echo -e "\e[1;32m1) \e[1;37mUbuntu\e[0m"
echo -e "\e[1;32m2) \e[1;37mKali Linux\e[0m"
echo -e "\e[1;32m3) \e[1;37mDebian\e[0m"
echo -e "\e[1;32m4) \e[1;37mArch Linux\e[0m"
echo -e "\e[1;32m5) \e[1;37mParrot OS\e[0m"
echo -e "\e[1;32m6) \e[1;37mIron Man\e[0m"
echo -e "\e[1;32m7) \e[1;37mHacker Mode\e[0m"

echo -e "\e[1;35m======================================\e[0m"
read -p "Choose your theme (1-7): " theme_choice

# Start loading effect
loading

# Handle theme selection
if [ "$theme_choice" == "1" ]; then
    # Ubuntu Theme
    echo -e "\e[1;33m[INFO] Activating Ubuntu Theme... \e[0m"
    pkg update && pkg upgrade
    pkg install neofetch
    neofetch --ascii_distro ubuntu
elif [ "$theme_choice" == "2" ]; then
    # Kali Linux Theme
    echo -e "\e[1;33m[INFO] Activating Kali Linux Theme... \e[0m"
    pkg update && pkg upgrade
    pkg install neofetch
    neofetch --ascii_distro kali
elif [ "$theme_choice" == "3" ]; then
    # Debian Theme
    echo -e "\e[1;33m[INFO] Activating Debian Theme... \e[0m"
    pkg update && pkg upgrade
    pkg install neofetch
    neofetch --ascii_distro debian
elif [ "$theme_choice" == "4" ]; then
    # Arch Linux Theme
    echo -e "\e[1;33m[INFO] Activating Arch Linux Theme... \e[0m"
    pkg update && pkg upgrade
    pkg install neofetch
    neofetch --ascii_distro arch
elif [ "$theme_choice" == "5" ]; then
    # Parrot OS Theme
    echo -e "\e[1;33m[INFO] Activating Parrot OS Theme... \e[0m"
    pkg update && pkg upgrade
    pkg install neofetch
    neofetch --ascii_distro parrot
elif [ "$theme_choice" == "6" ]; then
    # Iron Man Theme (Custom ASCII)
    echo -e "\e[1;33m[INFO] Activating Iron Man Theme... \e[0m"
    echo -e "\e[1;31m   _____     ______   \e[0m"
    echo -e "\e[1;31m  /     \   /      \   \e[0m"
    echo -e "\e[1;31m |  * Iron Man * |    \e[0m"
    echo -e "\e[1;31m  \_______/   \_____/   \e[0m"
    neofetch --ascii_distro ubuntu
elif [ "$theme_choice" == "7" ]; then
    # Hacker Mode
    echo -e "\e[1;33m[INFO] Activating Hacker Mode... \e[0m"
    echo -e "\e[1;32m $$$$$$$$$  $$$$$$  $$ $$ $$$$$$ \e[0m"
    echo -e "\e[1;32m $$$$$$$$$ $$  $$ $$  $$ $$     \e[0m"
    neofetch --ascii_distro arch
else
    echo -e "\e[1;31mInvalid choice! Try again.\e[0m"
    exit 1
fi

# End script
echo -e "\e[1;36m======================================\e[0m"
fancy_text "RedzUI has been activated!"
echo -e "\e[1;36m======================================\e[0m"
