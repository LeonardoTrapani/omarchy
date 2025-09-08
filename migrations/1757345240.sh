echo "Installing hyprvoice and configuring it"

if ! yay -Q hyprvoice-bin &>/dev/null; then
  sudo yay -S --noconfirm hyprvoice-bin
fi

omarchy-refresh-hyprland
