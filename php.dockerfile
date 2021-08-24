FROM php:7.4-fpm

ADD ./php/www.conf /usr/local/etc/php-fpm.d/
RUN apt update && apt install -y curl libonig-dev libxml2-dev unzip zlib1g-dev libpng-dev zip libzip-dev && rm -rf /var/lib/apt/lists/*

RUN addgroup --gid 1000 drupal && adduser --ingroup  drupal --gecos drupal --shell /bin/sh --disabled-password drupal

RUN mkdir -p /var/www/html

RUN chown -R drupal:drupal /var/www/html

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql gd zip bcmath mbstring exif pcntl