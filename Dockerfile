FROM php:7.4-apache

RUN sed -i -e 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i -e 's|security.debian.org|archive.debian.org/debian-security|g' /etc/apt/sources.list && \
    sed -i -e '/security.debian.org/d' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    nano \
    git

COPY index.html /var/www/html/
COPY info.php /var/www/html/