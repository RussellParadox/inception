FROM debian:oldstable

RUN apt update -y && \
apt install restic -y && \
mkdir /backup

WORKDIR /backup

COPY tools/start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD [ "start.sh" ]
