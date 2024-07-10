FROM debian:oldstable

# Install mariadb
RUN apt update -y && \
apt install -y mariadb-server

# Create wordpress database
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/create_database.sh /usr/local/bin/create_database.sh
# COPY tools/create_database.sh /docker-entrypoint-initdb.d/
RUN chmod +x /usr/local/bin/create_database.sh

EXPOSE 3306

CMD [ "/usr/local/bin/create_database.sh" ]