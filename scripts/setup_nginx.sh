#!/bin/bash

# Exit immediately on any error
set -e

# Install Nginx
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt install -y nginx

# Start Nginx and enable it to run on boot
systemctl start nginx
systemctl enable nginx 

# Ensure Nginx is running
if systemctl status nginx | grep "active (running)"; then
    echo "✅ Nginx is running."
else
    echo "❌ Failed to start Nginx."
    exit 1
fi
