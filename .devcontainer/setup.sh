#!/bin/bash

# Update package list
sudo apt update

# Install the Cinnamon desktop environment
sudo apt install -y cinnamon-desktop-environment

# Install additional Mint-like packages
sudo apt install -y lightdm slick-greeter mint-meta-cinnamon mint-themes mint-artwork mint-backgrounds-ulyana

# Install and configure xrdp
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo systemctl start xrdp

# Add user to the ssl-cert group to avoid permission issues
sudo adduser ${USER} ssl-cert

# Allow RDP through the firewall (if applicable)
sudo ufw allow 3389
