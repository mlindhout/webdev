FROM php:8.2.0-apache
RUN apt update && apt install -y zip libzip-dev libpng-dev
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN cd /etc/apache2/mods-enabled/ && ln -s ../mods-available/rewrite.load
