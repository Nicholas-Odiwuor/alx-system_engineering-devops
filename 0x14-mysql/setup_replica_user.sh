#!/usr/bin/env bash
# Script to set up MySQL replica user on primary server (web-01)

# Set MySQL root password (change this to your actual root password)
MYSQL_ROOT_PASSWORD="254_Tech_savvy"

# Set up MySQL replica user
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE USER 'replica_user'@'%' IDENTIFIED BY 'your_replica_password_here';"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';"

