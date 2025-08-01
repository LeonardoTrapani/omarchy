readonly CONFIGS=("aws" "bash" "git" "hypr" "nvim" "tmux")

cd ~/os

for config in "${CONFIGS[@]}"; do
    if stow --adopt "$config" &> /dev/null; then
        echo "Installed $config configuration"
    else
        echo "Failed to install $config configuration"
        exit 1
    fi
    git restore . # Stow adopt creates the symlinks but gets the previously existing files, now we restore them to the actual ones
done

cd -
