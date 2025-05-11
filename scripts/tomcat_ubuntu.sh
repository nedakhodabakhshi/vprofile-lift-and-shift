#!/bin/bash

# Update package list
sudo apt update -y

# Install OpenJDK 17
sudo apt install -y openjdk-17-jdk

# Install Tomcat 9
sudo apt install -y tomcat9 tomcat9-admin tomcat9-common tomcat9-docs

# Set JAVA_HOME environment variable
JAVA_HOME_PATH=$(readlink -f $(which java) | sed "s:/bin/java::")
echo "JAVA_HOME=\"$JAVA_HOME_PATH\"" | sudo tee -a /etc/environment
source /etc/environment

# Enable and start Tomcat 9
sudo systemctl enable tomcat9
sudo systemctl start tomcat9

# Check status
sudo systemctl status tomcat9
