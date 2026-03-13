FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libzip-dev

RUN docker-php-ext-install pdo_mysql zip

WORKDIR /var/www

COPY src/ .

RUN chown -R www-data:www-data /var/www