FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

COPY nginx/default.conf /etc/nginx/sites-enabled/default.conf
#RUN nginx -s reload

ADD . /var/www
RUN chown -R www-data:www-data /var/www