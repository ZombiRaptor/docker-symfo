FROM php:7.1-fpm

ENV PHP_APCU_VERSION 4.0.11
ENV PHP_XDEBUG_VERSION 2.4.0

RUN apt-get update\
    && apt-get install -y\
         libpq-dev\
         zlib1g-dev\
         libicu-dev\
         g++\
         && docker-php-source extract\
         ## Intl
         && docker-php-ext-configure intl\
         && docker-php-ext-install intl\
         ## Xdebug
         && pecl install xdebug-beta\
         && docker-php-ext-enable xdebug\
         && echo "xdebug.cli_color=1\nxdebug.remote_autostart=1\nxdebug.remote_connect_back=1" > /usr/local/etc/php/conf.d/xdebug.ini\
         && docker-php-ext-install\
            pdo\
            pdo_pgsql\
            mbstring\
            zip\
         && docker-php-source delete\
         && php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer\
         && chmod +x /usr/local/bin/composer

RUN usermod -u 1000 www-data

WORKDIR app/
