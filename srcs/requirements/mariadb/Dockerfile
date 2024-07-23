FROM debian:oldstable

# Install mariadb
RUN apt update -y && \
apt install -y mariadb-server

# Create wordpress database
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/start.sh /start.sh
RUN chmod +x /start.sh

CMD [ "/start.sh" ]