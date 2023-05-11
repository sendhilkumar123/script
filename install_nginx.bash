#!/bin/bash

# Update package lists
sudo apt-get update

# Install nginx
sudo apt-get install -y nginx

# Start nginx service
sudo systemctl start nginx

# Set nginx to start automatically on boot
sudo systemctl enable nginx

# Check nginx status
sudo systemctl status nginx
