#!/bin/bash

# Copy over Omarchy configs
mkdir -p ~/.config
cp -R ~/.local/share/omarchy/config/* ~/.config/

cp ~/.local/share/omarchy/default/bashrc ~/.bashrc
