FROM php:8.3-fpm-alpine
RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN docker-php-ext-install opcache
ADD docker/opcache.ini $PHP_INI_DIR/conf.d/