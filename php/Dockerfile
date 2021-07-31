FROM php:7.4-fpm

LABEL maintener farpat <p.farrugia@outlook.fr>

# Installation of basic packages
RUN apt-get update && apt-get install -y wget curl zip unzip git libzip-dev libicu-dev zsh

# Creation of user "app"
RUN adduser --disabled-password --home /home/app --gecos "User" app

# Installation of PHP extensions and Imagick
RUN docker-php-ext-install intl json zip pdo pdo_mysql && \
    mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" && \
    apt-get install -y libmagickwand-dev --no-install-recommends && \
    pecl install imagick && \
    docker-php-ext-enable imagick

# Installation of composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV COMPOSER_CACHE_DIR=/.cache/composer

# Installation of wkhtmltopdf
RUN apt-get install -y xfonts-75dpi xfonts-base && \
    curl "https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.buster_amd64.deb" -L -o "wkhtmltopdf.deb" && \
    dpkg -i wkhtmltopdf.deb && \
    rm wkhtmltopdf.deb
USER app
