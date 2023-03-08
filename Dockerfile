FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache apache2 && \
    rm -rf /var/cache/apk/*

COPY index.html /var/www/localhost/htdocs

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
