FROM debian:oldstable

# Install adminer
RUN apt update -y && \
apt install apache2 php libapache2-mod-php -y && \
apt install adminer -y && \
a2enconf adminer

# CMD [ "php", "-S 0.0.0.0:8080 adminer.php" ]
# CMD [ "php", "-S 0.0.0.0:8080" ]
# CMD [ "apachectl", "-D", "FOREGROUND" ]
COPY tools/start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]