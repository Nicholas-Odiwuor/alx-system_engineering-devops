#!/usr/bin/env bash
# Script to create a MySQL user with appropriate permissions on web-01 and web-02 servers

# Set MySQL root password (change this to your actual root password)
MYSQL_ROOT_PASSWORD="your_root_password_here"

# MySQL user credentials
MYSQL_USER="holberton_user"
MYSQL_PASSWORD="projectcorrection280hbtn"

# Set up MySQL user and grant necessary permissions
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT REPLICATION CLIENT ON *.* TO '$MYSQL_USER'@'localhost';"

