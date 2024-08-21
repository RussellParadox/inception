FROM debian:oldstable

# Install adminer
RUN apt update -y && \
apt install apache2 php libapache2-mod-php -y && \
apt install adminer -y && \
a2enconf adminer

COPY tools/start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]