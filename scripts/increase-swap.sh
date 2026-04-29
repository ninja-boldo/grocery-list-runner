#!/bin/bash
set -e

# Disable and remove existing swap
swapoff -a
rm -f /swapfile

# Create new 4GB swap
fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

# Make it persistent across reboots
if ! grep -q '/swapfile' /etc/fstab; then
  echo '/swapfile none swap sw 0 0' >> /etc/fstab
fi

echo "Done. Current swap:"
free -h
