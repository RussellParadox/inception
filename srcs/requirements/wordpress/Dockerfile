FROM debian:oldstable

# Install wordpress and php with php-fpm
RUN apt update -y && \
apt install -y curl php7.4 php7.4-fpm php-mysql mariadb-client && \
mkdir -p /var/www/html && \
cd /var/www/html/ && \
curl -O https://wordpress.org/latest.tar.gz && \
tar -xvf latest.tar.gz && \
rm latest.tar.gz && \
chown -R www-data:www-data /var/www/html/wordpress

# Configure wordpress and php-fpm
COPY conf/wp-config.php /var/www/html/wordpress/
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/
RUN mkdir -p /run/php

# Install wp cli
COPY tools/cli_install.sh /
RUN chmod +x cli_install.sh && \
./cli_install.sh

# Setup site and admin
# RUN cd /var/www/html/wordpress/ && \
# wp core install --allow-root --title="gdornic.42.fr" --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=info@wp-cli.org

COPY tools/start.sh /var/www/html/wordpress
RUN chmod +x /var/www/html/wordpress/start.sh
# CMD [ "/usr/sbin/php-fpm7.4", "-F" ]
CMD [ "/var/www/html/wordpress/start.sh" ]