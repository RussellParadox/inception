FROM debian:oldstable

RUN apt update && \
apt install -y nginx && \
apt install -y vim

COPY conf/sites-available /etc/nginx
COPY conf/sites-enabled /etc/nginx
COPY conf/nginx.conf /etc/nginx

EXPOSE 80

CMD [ "nginx" ]