FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/
ADD ./nginx/default.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 drupal && adduser -G drupal -g drupal -s /bin/sh -D drupal

RUN chown -R drupal:drupal /var/www/html