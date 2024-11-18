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
    zsh \
    stow

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Rust & Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.zshrc

# Crates
cargo install eza sheldon
