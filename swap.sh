#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:
# Roll Number:
# =====================================

# Write your commands below

# 1. Create a 1GB file for swap space
fallocate -l 1G /swapfile || dd if=/dev/zero of=/swapfile bs=1M count=1024

# 2. Set strict permissions (root-only access)
chmod 600 /swapfile

# 3. Format the file as swap space
mkswap /swapfile

# 4. Enable the swap space
swapon /swapfile

# 5. Verify active swap spaces
swapon --show
