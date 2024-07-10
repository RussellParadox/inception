#!/bin/bash

# Plugins
# cd /var/www/html/wordpress

echo "Installing Wordpress..."
wp core install --path=/var/www/html/wordpress --allow-root --url="gdornic.42.fr" --title="gdornic.42.fr" --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=info@wp-cli.org

echo "Installing Plugins..."
wp plugin install --path=/var/www/html/wordpress redis-cache --allow-root --activate

echo "Enable Plugins..."
wp redis enable --path=/var/www/html/wordpress --allow-root

echo "Starting Wordpress..."
exec /usr/sbin/php-fpm7.4 -F