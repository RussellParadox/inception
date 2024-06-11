service mariadb start

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';"
mysql -e "CREATE DATABASE $MYSQL_DATABASE;"
mysql -e "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"