FROM php:8.3-apache

WORKDIR /var/www/html

COPY . .

ENV COMPOSER_ALLOW_SUPERUSER=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    libicu-dev \
    libpq-dev \
    libzip-dev \
    unzip \
    zip

# Install PHP extensions
RUN docker-php-ext-install \
    intl \
    opcache \
    pdo \
    pdo_mysql \
    zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Symfony CLI
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt install symfony-cli

# Install composer packages
RUN composer install

RUN a2enmod rewrite headers

EXPOSE 80