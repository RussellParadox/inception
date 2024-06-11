from debian:oldstable

# Install mariadb
RUN apt update -y && \
apt install -y mariadb-server

# Create wordpress database
COPY tools/create_database.sh /
RUN chmod u+x create_database.sh && \
./create_database.sh

EXPOSE 3306

CMD [ "mysqld_safe" ]