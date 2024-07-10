FROM debian:oldstable

# Install redis
RUN apt update -y && \
apt install redis-server -y

# Configure redis
COPY conf/redis.conf /etc/redis/redis.conf

# CMD [ "tail", "-f" ]
CMD [ "redis-server", "--protected-mode", "no" ]