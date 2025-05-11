#!/bin/bash

# Install memcached and dependencies
sudo yum install -y memcached

# Start and enable the service
sudo systemctl start memcached
sudo systemctl enable memcached

# Allow external connections
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/sysconfig/memcached

# Restart to apply changes
sudo systemctl restart memcached
