#!/usr/bin/env bash
# Script to set up MySQL replication

# Set MySQL root password (change this to your actual root password)
MYSQL_ROOT_PASSWORD="254_Tech_savvy"

# Set MySQL user credentials
MYSQL_USER="holberton_user"
MYSQL_PASSWORD="projectcorrection280hbtn"

# Set up MySQL database and table
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS tyrell_corp;"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "USE tyrell_corp; CREATE TABLE IF NOT EXISTS nexus6 (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "USE tyrell_corp; INSERT INTO nexus6 (name) VALUES ('Leon');"

# Grant SELECT permission to holberton_user on the nexus6 table
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT SELECT ON tyrell_corp.nexus6 TO '$MYSQL_USER'@'localhost';"

