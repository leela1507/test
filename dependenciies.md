#!/bin/bash

# Install Apache HTTP server
yum install -y httpd

# Start the Apache service
service httpd start

# Check if Apache process is running
isExistApp=$(pgrep httpd)

# If Apache process is running, stop it
if [[ -n $isExistApp ]]; then
    service httpd stop
fi

