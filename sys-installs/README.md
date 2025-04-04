# sys-installs

This folder contains scripts to install various software packages on Ubuntu Linux.

## CUDA Installation Script (`install_cuda.sh`)
This script installs the CUDA Toolkit on a Debian-based system using `apt`. It:
- Checks if the script is run as root (requires `sudo`).
- Ensures the `apt` package manager is available.
- Prompts the user for confirmation before proceeding.
- Checks if CUDA is already installed by looking for `nvcc` or the `/usr/local/cuda` directory.
- Adds NVIDIA's package repository and GPG key.
- Installs CUDA silently.
- Verifies the installation and provides usage instructions.

### Usage
Run the script with root privileges:
```bash
sudo ./install_cuda.sh
```
After installation, verify by running:
```bash
nvcc --version
```
You may need to reboot or log out/log in for CUDA paths to be recognized.

### Citations
- [CUDA Installation Guide for Linux](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html) – Official instructions from NVIDIA.
- [NVIDIA Package Repositories](https://developer.nvidia.com/cuda-downloads) – Source of apt repository and GPG key.
- [Bash Scripting Guide](https://linuxconfig.org/bash-scripting-tutorial-for-beginners) – General reference for writing Bash scripts.

### AI Usage
- **ChatGPT (OpenAI, GPT-4)**
- **Prompt:** "Write a Bash script to install CUDA on Ubuntu, ensuring root access, checking apt availability, verifying existing install, and silently installing CUDA. Add a README with usage and citations."

---
This repository is maintained for automating software installation on Linux systems.

