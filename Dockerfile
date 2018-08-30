FROM php:7.2-alpine

RUN cd /usr/local/bin \
    && curl -sL http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o php-cs \
    && chmod +x php-cs \
    && curl -sL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o php-snif \
    && chmod +x php-snif

WORKDIR /app

LABEL maintainer "Radik Ilin <andmetoo@mail.ru"

LABEL version="1.0.0"
