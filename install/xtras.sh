#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator gnome-keyring signal-desktop \
    obsidian-bin libreoffice obs-studio kdenlive \
    xournalpp localsend-bin

  # Packages known to be flaky or having key signing issues are run one-by-one
  for pkg in pinta typora spotify zoom; do
    yay -S --noconfirm --needed "$pkg" ||
      echo -e "\e[31mFailed to install $pkg. Continuing without!\e[0m"
  done

  yay -S --noconfirm --needed bitwarden-desktop ||
    echo -e "\e[31mFailed to install bitwarden. Continuing without!\e[0m"
  yay -S --noconfirm --needed typora ||
    echo -e "\e[31mFailed to install Typora. Continuing without!\e[0m"
  yay -S --noconfirm --needed spotify ||
    echo -e "\e[31mFailed to install Spotify. Continuing without!\e[0m"
  yay -S --noconfirm --needed bitwarden-desktop||
    echo -e "\e[31mFailed to install Bitwarden. Continuing without!\e[0m"
fi

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-refresh-applications || true
