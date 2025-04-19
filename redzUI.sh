#!/data/data/com.termux/files/usr/bin/bash

cd $HOME

# 🎨 Warna
green="\e[32m"
red="\e[31m"
blue="\e[34m"
yellow="\e[33m"
cyan="\e[36m"
magenta="\e[35m"
bold="\e[1m"
end="\e[0m"

CONFIG_FILE="$HOME/.redzui_theme"

# 🎥 Loading Animasi
function loading() {
  echo -ne "${yellow}Applying"
  for i in {1..3}; do
    echo -ne "."
    sleep 0.4
  done
  echo -e "${end}"
}

# 🧾 List Tema
declare -A themes
themes["Ubuntu"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/ubuntu.zsh-theme"
themes["Kali Linux"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/kali.zsh-theme"
themes["Arch"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/arch.zsh-theme"
themes["Parrot OS"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/parrot.zsh-theme"
themes["Windows"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/windows10.zsh-theme"
themes["Iron Man"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/ironman.zsh-theme"
themes["Hacker"]="https://raw.githubusercontent.com/adi1090x/termux-style/master/styles/hacker.zsh-theme"

# ⬇️ Install zsh dan curl
command -v zsh >/dev/null 2>&1 || pkg install zsh -y
command -v curl >/dev/null 2>&1 || pkg install curl -y

# 🧠 Cek config lama
if [[ -f "$CONFIG_FILE" ]]; then
  saved=$(cat "$CONFIG_FILE")
  echo -e "${cyan}Tema terakhir: ${green}$saved${end}"
  echo -ne "${yellow}Mau ganti tema lagi? (y/n): ${end}"
  read jawab
  [[ $jawab != "y" ]] && echo -e "${green}Oke bro, enjoy tampilan lo!${end}" && exit
fi

# 🎭 HEADER KECE
# 🎭 HEADER SIMPEL KECE
clear
echo -e "${cyan}${bold}╭──────────────────────────────╮"
echo -e "│       REDZ UI TERMINAL      │"
echo -e "│      Versi 1  by rdz 😈     │"
echo -e "╰──────────────────────────────╯${end}"

sleep 1

# 📋 Menu Pilihan
echo -e "${blue}${bold}Pilih tampilan yang lo mau bro:\n${end}"
i=1
for theme in "${!themes[@]}"; do
  echo -e "${green}[${i}]${end} ${cyan}${theme}${end}"
  let i++
done

echo -ne "${yellow}\nMasukkan nomor pilihan: ${end}"
read input

theme_index=1
for name in "${!themes[@]}"; do
  if [[ $input -eq $theme_index ]]; then
    selected_theme="$name"
    break
  fi
  ((theme_index++))
done

if [[ -z "$selected_theme" ]]; then
  echo -e "${red}[!] Pilihan gak valid, keluar.${end}"
  exit 1
fi

# 🚀 Eksekusi
loading
echo -e "${green}[•] Mengatur tampilan: $selected_theme...${end}"
curl -s "${themes[$selected_theme]}" -o "$HOME/.zshrc"

echo "$selected_theme" > "$CONFIG_FILE"
chsh -s zsh
echo -e "${green}[✓] Selesai! Restart Termux buat lihat tampilan barunya bro.${end}"
