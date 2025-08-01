readonly CONFIGS=("aws" "bash" "git" "hypr" "nvim" "tmux")

cd ~/os

for config in "${CONFIGS[@]}"; do
    if stow "$config" &> /dev/null; then
        echo "Installed $config configuration"
    else
        echo "Failed to install $config configuration"
        exit 1
    fi
done

cd -
