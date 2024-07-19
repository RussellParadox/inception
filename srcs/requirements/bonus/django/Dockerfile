FROM debian:oldstable

# Install Django
RUN apt update -y && \
apt install python3 python3-pip -y && \
pip install Django

# Add Django project files
COPY conf/portfolio /home/django/portfolio
WORKDIR /home/django/portfolio/portfolio

COPY tools/start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]