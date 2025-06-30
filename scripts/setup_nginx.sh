#!/bin/bash

echo "Installing Nginx and cleaning deployment directory..."

apt update -y
apt install -y nginx

# Clean up previous deployment
rm -rf /usr/share/nginx/html/*

systemctl start nginx
systemctl enable nginx

echo "Done."
