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
    zsh

# Rust & Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Crates
cargo install exa sheldon

# SDKMan
curl -s "https://get.sdkman.io" | bash
