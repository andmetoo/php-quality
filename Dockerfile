FROM php:7.2-alpine

RUN curl -sL http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o /usr/local/bin/php-cs \
	&& chmod +x php-cs \
    && curl -sL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /usr/local/bin/php-snif \
	&& chmod +x php-snif

WORKDIR /app

LABEL maintainer "Radik Ilin <andmetoo@mail.ru"

LABEL version="1.0.1"
