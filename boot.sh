#!/bin/bash

ansi_art='
    ███        ▄████████    ▄████████    ▄███████▄    ▄████████ ███▄▄▄▄    ▄█  
▀█████████▄   ███    ███   ███    ███   ███    ███   ███    ███ ███▀▀▀██▄ ███  
   ▀███▀▀██   ███    ███   ███    ███   ███    ███   ███    ███ ███   ███ ███▌ 
    ███   ▀  ▄███▄▄▄▄██▀   ███    ███   ███    ███   ███    ███ ███   ███ ███▌ 
    ███     ▀▀███▀▀▀▀▀   ▀███████████ ▀█████████▀  ▀███████████ ███   ███ ███▌ 
    ███     ▀███████████   ███    ███   ███          ███    ███ ███   ███ ███  
    ███       ███    ███   ███    ███   ███          ███    ███ ███   ███ ███  
   ▄████▀     ███    ███   ███    █▀   ▄████▀        ███    █▀   ▀█   █▀  █▀   
              ███    ███                                                       '

clear
echo -e "\n$ansi_art\n"

sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Omarchy..."
rm -rf ~/.local/share/omarchy/
git clone https://github.com/leonardotrapani/omarchy.git ~/.local/share/omarchy >/dev/null

# Use custom branch if instructed
if [[ -n "$OMARCHY_REF" ]]; then
  echo -e "\eUsing branch: $OMARCHY_REF"
  cd ~/.local/share/omarchy
  git fetch origin "${OMARCHY_REF}" && git checkout "${OMARCHY_REF}"
  cd -
fi

echo -e "\nCloning trapani os dotfiles"
rm -rf ~/os
git clone https://github.com/leonardotrapani/os.git ~/os >/dev/null

# Use custom branch if instructed
if [[ -n "$OS_REF" ]]; then
  echo -e "\eUsing branch: $OS_REF"
  cd ~/os
  git fetch origin "${OS_REF}" && git checkout "${OS_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/omarchy/install.sh
