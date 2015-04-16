FROM php:5.4-apache

RUN apt-get update && \
        apt-get -yq install \
        curl \
        apache2 \
        php5-mysql \
        php5-curl \
        php-pear \
        php-apc && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
