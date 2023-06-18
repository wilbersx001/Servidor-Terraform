FROM php:7.4-fpm

# Instala las dependencias requeridas para MySQLi
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libxml2-dev \
    zlib1g-dev \
    && docker-php-ext-install mysqli pdo_mysql

# Configura el archivo php.ini
COPY php.ini /usr/local/etc/php/php.ini

FROM alpine:latest

RUN apk add --no-cache mysql-client