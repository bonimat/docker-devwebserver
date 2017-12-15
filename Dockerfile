FROM php:7.0.19-apache

RUN apt-get update &&\
    apt-get install --no-install-recommends --assume-yes --quiet ca-certificates curl git &&\
    rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug-2.5.5 && docker-php-ext-enable xdebug
# RUN echo 'zend_extension="/usr/local/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_connect_back=1' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.idekey=PHPSTORM' >> /usr/local/etc/php/php.ini

RUN curl -Lo /usr/local/lib/phpunit.phar https://phar.phpunit.de/phpunit.phar
RUN cp /usr/local/lib/phpunit.phar /usr/local/bin/phpunit
RUN chmod 755 /usr/local/bin/phpunit
