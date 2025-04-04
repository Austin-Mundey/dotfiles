#!/bin/bash

if [[ $(id -u) -ne 0 ]]; then
    echo "This script requires root privileges. Please run with sudo."
    exit 1
fi

if ! command -v apt &> /dev/null; then
    echo "apt package manager not found."
    exit 1
fi

echo "This script will install CUDA Toolkit on your Ubuntu system."
echo -n "Do you want to install CUDA? (y/n): "
read -r response
if [[ "$response" != "y" ]]; then
    echo "Not Installing..."
    exit 0
fi

if command -v nvcc &> /dev/null || [[ -d "/usr/local/cuda" ]]; then
    echo "CUDA appears to already be installed or exists. Exiting to avoid conflict."
    exit 1
fi

apt update -y
apt install -y gnupg curl
curl -fsSL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin | tee /etc/apt/preferences.d/cuda-repository-pin-600
curl -fsSL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/7fa2af80.pub | gpg --dearmor -o /usr/share/keyrings/cuda-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/cuda-archive-keyring.gpg] https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" | tee /etc/apt/sources.list.d/cuda.list

# Update and install
apt update -y
apt install -y cuda

# Completion message
echo "CUDA Toolkit installation complete!"
echo "To verify, run: nvcc --version"
echo "You may need to reboot or log out/log in for CUDA paths to be available."

