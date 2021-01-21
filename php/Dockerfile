FROM php:7.4-fpm

LABEL maintener farpat <p.farrugia@outlook.fr>

# Installation of basic packages
RUN apt-get update && apt-get install -y curl zip unzip git libzip-dev libicu-dev

# Installation of ZSH
RUN apt-get install -y zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    git clone https://github.com/zsh-users/zsh-autosuggestions /root/.zsh/zsh-autosuggestions
COPY .zshrc /root/.zshrc

# Installation of PHP extensions and Imagick
RUN docker-php-ext-install intl json zip pdo pdo_mysql && \
    mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" && \
    apt-get install -y libmagickwand-dev --no-install-recommends && \
    pecl install imagick && \
    docker-php-ext-enable imagick

# Installation of composer
RUN curl -sS https://getcomposer.org/install | php -- --install-dir=/usr/bin --filename=composer
ENV COMPOSER_CACHE_DIR=/.cache/composer

# Installation of wkhtmltopdf
RUN apt-get install -y xfonts-75dpi xfonts-base && \
    curl -sL -o /tmp/w.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb && \
    dpkg -i /tmp/w.deb && \
    rm /tmp/w.deb

WORKDIR /root
