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

# CMD [ "sleep" , "1000000000"]
CMD [ "/usr/sbin/php-fpm7.4", "-F" ]