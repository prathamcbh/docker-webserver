FROM debian:latest

RUN  apt-get install -y apache2 curl net-tools

COPY ./src /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
