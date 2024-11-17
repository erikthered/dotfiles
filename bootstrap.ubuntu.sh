#!/bin/bash

# Update APT sources
sudo apt -y update 
sudo apt -y upgrade

# APT packages
sudo apt -y install \
    build-essential \
    libssl-dev \
    pkg-config \
    zip \
    unzip \
    micro \
    curl \
    fzf \
    zsh \
    stow

# Rust & Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.zshrc

# Crates
cargo install eza sheldon
