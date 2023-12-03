#!/bin/bash

# Check if Ansible is already installed
if command -v ansible &> /dev/null; then
    echo "Ansible is already installed."
    exit 0
fi

# Update package list
sudo apt -y update && upgrade

# Install Ansible
sudo apt install -y ansible

# Check the installation
if command -v ansible &> /dev/null; then
    echo "Ansible has been successfully installed."
else
    echo "Error: Ansible installation failed."
    exit 1
fi

# Display Ansible version
ansible --version