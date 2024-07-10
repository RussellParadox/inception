FROM debian:oldstable

# Install vsftpd
RUN apt update -y && \
apt install vsftpd -y

# Configure vsftpd
COPY conf/vsftpd.conf /etc/vsftpd.conf
RUN mkdir -p /var/run/vsftpd/empty

COPY tools/start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]