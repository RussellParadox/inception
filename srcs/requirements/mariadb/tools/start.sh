#!/bin/bash

# Start MariaDB service
service mariadb start

# Wait for MariaDB to start
sleep 2

# Create Database
mariadb -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

# Create User
mariadb -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"

# Grant Privileges
mariadb -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

# Alter root password
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

# Flush Privileges
mariadb -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

# Shutdown MariaDB
mariadb-admin -u root -p${MYSQL_ROOT_PASSWORD} shutdown

# Run MariaDB server
exec mysqld_safe
