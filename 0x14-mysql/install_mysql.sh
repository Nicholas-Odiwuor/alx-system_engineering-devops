#!/usr/bin/env bash
# Script to install MySQL 5.7.x on web-01 and web-02 servers

# Update package index
sudo apt-get update

# Install MySQL Server 5.7.x
sudo apt-get install -y mysql-server-5.7

# Check MySQL version
mysql --version

