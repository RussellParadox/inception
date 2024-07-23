FROM debian:oldstable

# Install nginx
RUN apt update && \
apt install -y nginx && \
apt install -y vim && \
apt install -y openssl

# Configure nginx
RUN rm -rf /etc/nginx/sites-available /etc/nginx/sites-enabled /etc/nginx/nginx.conf
COPY conf /etc/nginx

# Get certificate and key for TLS
RUN mkdir -p /etc/nginx/tls && \
openssl req -x509 -nodes -out /etc/nginx/tls/gdornic.42.fr.crt -keyout /etc/nginx/tls/gdornic.42.fr.key -subj "/C=FR/ST=PO/L=Perpignan/O=42/OU=Education/CN=gdornic.42.fr/UID=gdornic"

CMD [ "nginx" ]