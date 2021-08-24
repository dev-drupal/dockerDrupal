FROM composer:2

RUN addgroup -g 1000 drupal && adduser -G drupal -g drupal -s /bin/sh -D drupal

WORKDIR /var/www/html