#!/bin/bash

# Define the WordPress root directory
WP_ROOT="/var/www/domain_name/html"

# Check if the directory exists
if [ ! -d "$WP_ROOT" ]; then
    echo "Error: Directory $WP_ROOT does not exist."
    exit 1
fi

# Change to the WordPress root directory
cd $WP_ROOT

# Set directory permissions to 755
find . -type d -exec chmod 755 {} \;

# Set file permissions to 644
find . -type f -exec chmod 644 {} \;

# Secure wp-config.php by setting its permissions to 600
chmod 600 wp-config.php

# Script completion
echo "WordPress permissions have been set successfully."
