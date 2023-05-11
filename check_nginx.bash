#!/bin/bash

# Check if the Nginx service is running
if ! pgrep -x "nginx" > /dev/null
then
    # If the service is not running, start it
    sudo systemctl start nginx
    echo "Nginx service started."
else
    # If the service is already running, do nothing
    echo "Nginx service is already running."
fi

